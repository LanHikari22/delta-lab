// DNA
#![allow(dead_code)]

use std::path::Path;            // for reading from file
// use std::error::Error;
use std::fs::File;
use std::io::prelude::*;        // needed for traits like the Read trait

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

// TODO: impl methods for DNA/RNA structs

enum DNABase {
    A, C, G, T,
}

enum RNABase {
    A, C, G, U,
}

struct DNASeq {
    pub seq: Vec<DNABase>,
}

struct RNASeq {
    pub seq: Vec<RNABase>
}


/// represents count of each base
#[derive(Debug, PartialEq)]
struct DNABaseReport {
    a: i32,
    c: i32,
    g: i32,
    t: i32,
}


/// a valid DNA sequence contains only the symbols A, C, G, T, and whitespace.
fn is_valid_dna_string(dna_str: &str) -> bool {
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        if c != 'A' && c != 'C' && c != 'G' && c != 'T' 
            {return false;}
    }
    true
}

/// a valid RNA sequence contains only the symbols A, C, G, U, and whitespace.
fn is_valid_rna_string(dna_str: &str) -> bool {
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        if c != 'A' && c != 'C' && c != 'G' && c != 'U' 
            {return false;}
    }
    true
}

/// a valid DNA base character must be A, C, G, T, or whitespace.
fn is_valid_dna_base(base: char) -> bool {
    base == 'A' || base == 'C' || base == 'G' || base == 'T' || base.is_whitespace()
}

fn is_valid_rna_base(base: char) -> bool {
    base == 'A' || base == 'C' || base == 'G' || base == 'U' || base.is_whitespace()
}


/// reads a DNA string and returns count of its 4 base symbols: A, C, G and T.
/// @pre is_valid_dna_string(dna_str)
fn count_dna_bases(dna_str: &str) -> DNABaseReport {
    assert!(is_valid_dna_string(dna_str));
    let mut report = DNABaseReport {a: 0, c: 0, g: 0, t: 0};

    // count bases
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        match c {
            'A' => report.a += 1,
            'C' => report.c += 1,
            'G' => report.g += 1,
            'T' => report.t += 1,
            _ => unreachable!("invalid state for a valid DNA string"),
        }
    }

    report
}


/// converts a DNA sequence to an RNA sequence
/// @pre is_valid_dna_string(dna_str)
fn to_rna(dna_str: &str) -> String {
    assert!(is_valid_dna_string(dna_str));
    dna_str.replace("T", "U")
}

/// @pre is_valid_rna_string(rna_codon)
/// @pre rna_codon.len() == 3
fn to_protein_base(rna_codon: &str) -> char {
    assert!(is_valid_rna_string(rna_codon));
    assert!(rna_codon.len() == 3);

    unimplemented!();
    
}


/// takes the complementary of a DNA base. Complementary pairs must always go together
/// in two strands of DNA: AT and CG.
/// @pre is_valid_dna_base(base)
fn complement_dna_base(base: char) -> char {
    assert!(is_valid_dna_base(base));
    match base {
        'A' => 'T',
        'C' => 'G',
        'G' => 'C',
        'T' => 'A',
        _ => unreachable!("invalid state for a valid DNA base"),
    }
}


/// genereates the reverse complement of a DNA string
/// @pre is_valid_dna_string(dna_str)
fn dna_revc(dna_str: &str) -> String {
    assert!(is_valid_dna_string(dna_str));

    let mut v = dna_str.chars()
        .filter(|c| !c.is_whitespace())
        .map(|c| complement_dna_base(c))
        .collect::<Vec<_>>();
    v.reverse();

    v.iter().collect::<String>()
}


/// calculate the GC content if a DNA sequence. The GC sequence is the ratio
/// of G and C bases present against other symbols
/// @pre is_valid_dna_string(dna_str)
fn dna_calc_gc_content(dna_str: &str) -> f32 {
    assert!(is_valid_dna_string(dna_str));

    let mut symbols = 0;
    let mut gc_symbols = 0;
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        if c == 'G' || c == 'C' {gc_symbols += 1;}
        symbols += 1;
    }
    
    gc_symbols as f32 / symbols as f32
}

/// calculates the GC content of all DNA sequences in #dna_seq_map and returns
/// the one with the largest GC content
fn calculate_largest_gc_content(dna_seq_map: &HashMap<String, String>) -> (&str, f32) {
    let mut max_name: Option<&str> = None;
    let mut max_gc: Option<f32> = None;
    for name in dna_seq_map.keys() {
        // println!("{}: {}", name, dna_calc_gc_content(&dna_seq_map[name]) * 100f32);
        
        if max_name.is_none() {
            assert!(max_gc.is_none());
            max_name = Some(name);
            max_gc = Some(dna_calc_gc_content(&dna_seq_map[name]));
        } else {
            let gc = dna_calc_gc_content(&dna_seq_map[name]);
            if gc > max_gc.unwrap() {
                max_name = Some(name);
                max_gc = Some(gc);
            }
        }
    }

    (&max_name.unwrap(), max_gc.unwrap())
}

/// calculates the hamming distance of two equal-length DNA sequences
/// @pre is_valid_dna_string(dna_seq_a)
/// @pre is_valid_dna_string(dna_seq_b)
/// @pre dna_seq_a.len() == dna_seq_b.len()
fn dna_calc_hamming_dist(dna_seq_a: &str, dna_seq_b: &str) -> i32 {
    assert!(is_valid_dna_string(dna_seq_a));
    assert!(is_valid_dna_string(dna_seq_b));
    assert!(dna_seq_a.len() == dna_seq_b.len());

    dna_seq_a.chars().zip(dna_seq_b.chars())
        .map(|(c1, c2)| if c1 != c2 {1} else {0})
        .sum()
}

fn main() {
    let a = "CTGTAACCTTACAGGGTATGTCACTGGCCTCAATGATCAGACATTTCAACGACCGGTGAGCTTCTTTACCAGGGGCCGGTTGAACCTTGACACTCGTAACCTAAGATAGGACTGGACCTGCAGTAAAACCACGATGGGTTGAATGCTACTGTTCATGGCCCCACTACGCTGAATGATGGAATCATTAGTCTGCACTGACTGGTTGTGTCATTGATTGCCTACACCATAGATCCGTTGCTGGCGAAACCGGCTGCGCGCTTACCGCCAGTGAAGCGACGCCTATGCGATTACTAATTTTACGGATGGTTTACAGTGTCGAACGCCGGTCTGGATCATCTAGGAGGGCATCCCCTGATTCCGTACGGCCAGGTCAAATAAACCTCTGATGTCCGTCGCGGTGATCGCGATGTCGAGTGTAGAAGGAGAACCATTCTTTAAGGGACGACAGCGGTCAGTTATTACTATTTATCCCGGGGCAGACAGTATAGTCTCGGCCCATGCGCATACAGGGTAAGCATACCTGTCCCGCAGATAGTCGTTTGTCATCAATTGCAACATGCGTGCATAGTCCCAAAACCAGTGCCCTTGGGGTTGCCTTAAGGTGGTGATTTGAATGTGGCCAACAGATCATAGACCCTCAACCTTCATGCCTGTTATGATACACTTTCCGGCGACGCCGAAGTCCTTAGTCGGGAACGCAAATCATACCGACAGAACATTGCCTCCAACCGGCTAACGCTCATCGAACCCCCCCTAAAGTGGGCCCGACGACCTCTGGTGAGGTTAACGTGTCTATGCCTTAAGTCCACTGTCAATCCCTCCCACCTCGCCCACTTCTGTTCAATTGTTCTTGAATACGCCTCTCCACGAGCAAGATGTGGTGAGCTCACGCTTTGCACAAGGCCAGTAGGGGTGGCGCGGTCGACTTTGTTGGAAAGTACCCAAGCGTCTGTACCGGGCATGCCAGAGAGAGAATAAGGGGTTAT";
    let b = "CTGTCACTATTTAGGGTTTGACTCTGGTCGCGAGGCTGGTAGCGCCCCACCACTGGGGTGCTTCATCGGCGGGGTCGGGCAGAAGGCCGTCCAGGGTCCTCTTGAATAGAACATGTCCTGCGGTAACATTAAGCCGGCCGGGACCGCCCAGGACCGTCTCGTCCCACACCCAATCATGGTCCTTCCTGTGCGCTTCGGATAACCAGGGCTAGGAGTACCGGTCACTTGGAACCCGAGCATGAGCAACAGATGGCTAGCCAACCAACAGGGGAGATGCGCCAGTTATATCACAAGGCTCCCCTCTAGTTTCAAATACCTAGAACCGGCCTGACTTCTCTAGCATCGCTTATCCTGTATAGGCATGTATAGACCTAACAATACGTTCGATTGACCTGCTGGTGAAACGTACCTGATCTTACATAGACACATCTTTTCTGGGGGAGGCAAGCGAATGGTTATGGCTCGCTGTCCCTCCTAGGACCGGACATTGACCTTGTATGCCGGTACCCCGTAGGAGTGAACCTCCCTGATTGAATCAGAGCACACCGCTTAAGTTGTTAGCAATTACTACCTGGATGCTTGCACTAGTGCGTGCCGCAAACTGGTGATGCGAGCGGCGCCGGAGTATCAAGGACTAATTGATTTTAACCAGGTTAAGTGACACATTACCACGTTAGCGACCTCTTAATCCCGGCAGTTTGATTAGCCCCATCGATCTGTCTTTCCATACAAACTAATCTACGAGAATTCGACCGCTACGAGTACCGAGTCACCCTACTGTGGTAGGAGCGAATGGCTCGTCACTACAGAGACTATCCCGGCCTCATACCCCAAGACTTGATTAGAAGTGCTCCATTCTGCGATCCCCGCTCCCGTCGCGGTGTGCTGGCCTTAAGGCGAATAAATTTAGGCATTGCGCTGTCCCAGCCACTGTGGCAGGTCGAAGTGTGTGTCCCGGGCACAACATGGTGCAACTAATCTGATAT";
    println!("{}", dna_calc_hamming_dist(a, b));
}


#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_to_rna() {
        assert_eq!(to_rna("GATGGAACTTGACTACGTAAATT"), "GAUGGAACUUGACUACGUAAAUU");
        // assert_eq!(to_rna("GATGGAACTTGACTACGTAAATU").unwrap_err(), DNAError::InvalidDNASequence);
    }

    #[test]
    fn test_dna_revc() {
        assert_eq!(dna_revc("AAAACCCGGT"), "ACCGGGTTTT");
        // assert_eq!(dna_revc("AAAACCCGGU").unwrap_err(), DNAError::InvalidDNASequence);
    }

    #[test]
    fn test_dna_calc_gc_content() {
        assert_eq!(dna_calc_gc_content("AGCTATAG"), 0.375);

        // every DNA sequence and its complement must have the same GC content!
        assert_eq!(dna_calc_gc_content("AGCTATAG"), dna_calc_gc_content(&dna_revc("AGCTATAG")));
    }

    #[test]
    fn test_dna_calc_hamming_dist() {
        assert_eq!(dna_calc_hamming_dist("GAGCCTACTAACGGGAT", "CATCGTAATGACGGCCT"), 7);
    }

}
