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

/// calculates all permutations [0..n] of n
/// @pre n != 0
fn permutations(n: u32) -> Vec<Vec<u32>> {
    assert!(n != 0);
    if n == 1 {return vec![vec![1]]}
    // generate n * permutations(n-1) with all possible permutations n
    let prev_perm = permutations(n-1);
    let mut out: Vec<Vec<u32>> = vec![];
    // extend with each n-1 permutation for all possbile positions of n
    for i in 0..n {
        let mut cloned_prev_perm = prev_perm.clone();
        cloned_prev_perm.iter_mut().for_each(|v| v.insert(i as usize, n));
        out.extend(cloned_prev_perm);
    }
    out.sort();
    out
}

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
