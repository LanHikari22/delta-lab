#![allow(dead_code)]
// for reading from file
use std::path::Path;
// use std::error::Error;
use std::fs::File;
use std::io::prelude::*; // needed for traits like the Read trait

use std::collections::HashMap;


fn read_input(input_path: &str) -> String {
    let path = Path::new(input_path);
    let mut file = File::open(&path).unwrap();
    let mut out = String::new();
    file.read_to_string(&mut out).unwrap();
    out
}


fn read_fasta_format(path: &str) -> Option<HashMap<String, String>> {
    fn parse_entry(content: &str) -> Option<(usize, &str, String)> {
        let mut cur = 0;
        let mut first_line: bool = true;
        let mut name: Option<&str> = None;
        let mut sequence: Vec<&str> = vec![];

        for line in content.split('\n') {
            if first_line {
                if !line.starts_with(">") {return None}
                name = Some(&line[1..]);
                first_line = false;
            } else {
                if line.starts_with(">") {break;} // don't process next entry
                sequence.push(line);
            }
            cur += line.len() + 1;
        }

        // correct cursor if this is the last entry -- no +1 new line (because of EOF)
        if cur == content.len() + 1 {cur -= 1}
        // could not parse sequence name or sequence
        if name == None || sequence.len() == 0 {return None}

        Some((cur, name.unwrap(), sequence.join("\n")))
    } 

    let content = read_input(path);
    let mut out: HashMap<String, String> = HashMap::new();

    let mut slice = &content[..];
    while slice != "" {
        let (cur, name, seq) = parse_entry(slice)?;
        out.insert(name.to_string(), seq);
        slice = &slice[cur..];
    }

    Some(out)
}


/// represents count of each base
#[derive(Debug, PartialEq)]
struct DNABaseReport {
    a: i32,
    c: i32,
    g: i32,
    t: i32,
}


#[derive(Debug, PartialEq)]
enum DNAError {
    InvalidDNASequence,
    InvalidDNABase(char),
    InvalidRNASequence,
    InvalidRNABase(char),
    UnequalSequences,
}


fn is_valid_dna_string(dna_str: &str) -> bool {
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        if c != 'A' && c != 'C' && c != 'G' && c != 'T' {return false;}
    }
    true
}


fn is_valid_rna_string(dna_str: &str) -> bool {
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        if c != 'A' && c != 'C' && c != 'G' && c != 'U' {return false;}
    }
    true
}


/// reads a DNA string and returns count of its 4 base symbols: A, C, G and T.
/// @expects #dna_str to be a valid DNA string: (containing only A, C, G, T or white space symbols)
///     else returns InvalidDNASequence
fn count_dna_bases(dna_str: &str) -> Result<DNABaseReport, DNAError> {
    let mut report = DNABaseReport {a: 0, c: 0, g: 0, t: 0};

    // count bases
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        match c {
            'A' => report.a += 1,
            'C' => report.c += 1,
            'G' => report.g += 1,
            'T' => report.t += 1,
            _ => return Err(DNAError::InvalidDNASequence),
        }
    }

    Ok(report)
}


/// converts a DNA sequence to an RNA sequence
/// @expects #dna_str to be a valid DNA sequence
fn to_rna(dna_str: &str) -> Result<String, DNAError> {
    if !is_valid_dna_string(dna_str) {return Err(DNAError::InvalidDNASequence)}
    Ok(dna_str.replace("T", "U"))
}


fn complement_dna_base(base: char) -> Result<char, DNAError> {
    match base {
        'A' => Ok('T'),
        'C' => Ok('G'),
        'G' => Ok('C'),
        'T' => Ok('A'),
        _ => Err(DNAError::InvalidDNABase(base)),
    }
}


/// genereates the reverse complement of a DNA string
/// @expects #dna_str to be a valid DNA sequence
fn dna_revc(dna_str: &str) -> Result<String, DNAError> {
    if !is_valid_dna_string(dna_str) {return Err(DNAError::InvalidDNASequence)}

    let mut v = dna_str.chars()
        .filter(|c| !c.is_whitespace())
        .map(|c| complement_dna_base(c).unwrap())
        .collect::<Vec<_>>();
    v.reverse();

    Ok(v.iter().collect::<String>())
}


/// calculate the GC content if a DNA sequence. The GC sequence is the ratio
/// of G and C bases present against other symbols
fn dna_calc_gc_content(dna_str: &str) -> Result<f32, DNAError> {
    if !is_valid_dna_string(dna_str) {return Err(DNAError::InvalidDNASequence)}

    let mut symbols = 0;
    let mut gc_symbols = 0;
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        if c == 'G' || c == 'C' {gc_symbols += 1;}
        symbols += 1;
    }
    
    Ok(gc_symbols as f32 / symbols as f32)
}

/// calculates the GC content of all DNA sequences in #dna_seq_map and returns
/// the one with the largest GC content
fn calculate_largest_gc_content(dna_seq_map: &HashMap<String, String>) -> (&str, f32) {
    let mut max_name: Option<&str> = None;
    let mut max_gc: Option<f32> = None;
    for name in dna_seq_map.keys() {
        println!("{}: {}", name, dna_calc_gc_content(&dna_seq_map[name]).unwrap() * 100f32);
        if max_name.is_none() {
            assert!(max_gc.is_none());
            max_name = Some(name);
            max_gc = Some(dna_calc_gc_content(&dna_seq_map[name]).unwrap());
        } else {
            let gc = dna_calc_gc_content(&dna_seq_map[name]).unwrap();
            if gc > max_gc.unwrap() {
                max_name = Some(name);
                max_gc = Some(gc);
            }
        }
    }

    (&max_name.unwrap(), max_gc.unwrap())
}

fn dna_calc_hamming_dist(dna_seq_a: &str, dna_seq_b: &str) -> Result<f32, DNAError> {
    if !is_valid_dna_string(dna_seq_a) {return Err(DNAError::InvalidDNASequence)}
    if !is_valid_dna_string(dna_seq_b) {return Err(DNAError::InvalidDNASequence)}
    if dna_seq_a.len() != dna_seq_b.len() {return Err(DNAError::)}

    unimplemented!();
}

fn main() {
    let dna_seq_map = read_fasta_format("inputs/gc/test1").unwrap();
    let (name, gc) = calculate_largest_gc_content(&dna_seq_map);
    println!("{}", name);
    println!("{}", gc * 100.0);
}


#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_to_rna() {
        assert_eq!(to_rna("GATGGAACTTGACTACGTAAATT").unwrap(), "GAUGGAACUUGACUACGUAAAUU");
        assert_eq!(to_rna("GATGGAACTTGACTACGTAAATU").unwrap_err(), DNAError::InvalidDNASequence);
    }

    #[test]
    fn test_dna_revc() {
        assert_eq!(dna_revc("AAAACCCGGT").unwrap(), "ACCGGGTTTT");
        assert_eq!(dna_revc("AAAACCCGGU").unwrap_err(), DNAError::InvalidDNASequence);
    }

    #[test]
    fn test_dna_calc_gc_content() {
        assert_eq!(dna_calc_gc_content("AGCTATAG").unwrap(), 0.375);

        // every DNA sequence and its complement must have the same GC content!
        assert_eq!(dna_calc_gc_content("AGCTATAG").unwrap(), dna_calc_gc_content(&dna_revc("AGCTATAG").unwrap()).unwrap());
    }

}
