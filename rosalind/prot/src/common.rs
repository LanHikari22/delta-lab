use std::path::Path;        // for reading from file
use std::fs::File;
use std::io::prelude::*;    // needed for traits like the Read trait

/// reads a file to a string
pub fn read_input(input_path: &str) -> String {
    let path = Path::new(input_path);
    let mut file = File::open(&path).unwrap();
    let mut out = String::new();
    file.read_to_string(&mut out).unwrap();
    out
}


/// calculates all permutations [0..n] of n
/// @pre n != 0
pub fn permutations(n: u32) -> Vec<Vec<u32>> {
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

