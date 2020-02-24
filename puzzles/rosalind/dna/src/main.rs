// for reading from file
use std::path::Path;
// use std::error::Error;
use std::fs::File;
use std::io::prelude::*; // needed for traits like the Read trait

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

fn read_input(input_path: &str) -> String {
    let path = Path::new(input_path);
    let mut file = File::open(&path).unwrap();
    let mut out = String::new();
    file.read_to_string(&mut out).unwrap();
    out
}

fn main() {
    let s = read_input("test1.in");
    println!("input: {}", s);
    println!("output: {:?}", count_dna_bases(&s).unwrap());
}
