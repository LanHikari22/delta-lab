// PROT - Translating RNA into Protein

#![allow(dead_code)]

#[macro_use] extern crate lazy_static;

mod common;
mod dna;

// use std::error::Error;

use common::*;

fn error_on_usage(prog_name: &str) {
    println!("usage: {} n", prog_name);
    std::process::exit(0);
}

fn main() {
    let args = std::env::args().collect::<Vec<String>>();
    if args.len() < 2 {
        error_on_usage(&args[0]);
    }
    let n = (&args[1]).parse::<u32>();
    if n.is_err() {
        println!("error: expected n to be a u32");
        error_on_usage(&args[0]);
    }
    let n = n.unwrap();

    let perms = permutations(n);
    println!("{}", perms.len());
    for perm in perms {
        for (i, n) in perm.iter().enumerate() {
            print!("{}", n);
            if i != perm.len()-1 {
                print!(" ");
            }
        }
        println!();
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_permutations() {
        assert_eq!(permutations(1), vec![vec![1]]);
        assert_eq!(permutations(2), vec![vec![1,2], vec![2,1]]);
        assert_eq!(permutations(3), vec![vec![1,2,3], vec![1,3,2], vec![2,1,3], vec![2,3,1], vec![3,1,2], vec![3,2,1]]);
    }
}
