#![allow(dead_code)]
// for reading from file
use std::path::Path;
// use std::error::Error;
use std::fs::File;
use std::io::prelude::*; // needed for traits like the Read trait

fn read_input(input_path: &str) -> String {
    let path = Path::new(input_path);
    let mut file = File::open(&path).unwrap();
    let mut out = String::new();
    file.read_to_string(&mut out).unwrap();
    out
}

/// calculates the number of rabbit pairs after #n months, if each rabbit pair made #k offsprint
/// pairs. Maturatiy occurs in a month, hence this follows the fibonacci sequence.
fn calc_fib_rabbit_pairs(n: u64, k: u64) -> u64 {
    // assume 1-indexed n
    let n = n-1;
    // fibonncci init sequence [1,1] returns 1
    if n < 2 {return 1}

    let mut prev = [1u64, 1u64];
    let mut out: u64 = k*prev[0] + prev[1];
    prev[1] = out;
    if n == 2 {return out}

    for _ in 2..n {
        out = k*prev[0] + prev[1];
        prev[0] = prev[1];
        prev[1] = out;
    }

    out
}

fn main() {
    print!("[");
    let k = 3;
    for i in 1..15 {
        print!("{}, ", calc_fib_rabbit_pairs(i, k));
    }
    println!("]");
    println!("out: {}", calc_fib_rabbit_pairs(33, 3));
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_calc_fib_rabbit_pairs() {
        assert_eq!(calc_fib_rabbit_pairs(5, 3), 19);
    }
}
