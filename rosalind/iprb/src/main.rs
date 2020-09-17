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
    // extend with each n-1 permutation for all possible positions of n
    for i in 0..n {
        let mut cloned_prev_perm = prev_perm.clone();
        cloned_prev_perm.iter_mut().for_each(|v| v.insert(i as usize, n));
        out.extend(cloned_prev_perm);
    }
    out.sort();
    out
}
/// Given Three positive integers k, m, and n, representing a population containing k+m+n organisms: 
/// k individuals are homozygous dominant for a factor, m are heterozygous, and n are homozygous recessive.
/// Returns The probability that two randomly selected mating organisms will produce an individual possessing a dominant allele (and thus displaying the dominant phenotype). 
/// Assume that any two organisms can mate.
fn prob_dominant_child(k: u32, m: u32, n: u32) -> f32 {  
    unimplemented!();
}


fn usage_str(prog_name: &str) -> String {
    format!("{} k m n", prog_name)
}

fn help_str(prog_name: &str) -> String {
    format!("\
            USAGE:\
            \n    {}\
            \nARGUMENTS:\
            \n    k: individuals that are homozygous dominant for a factor\
            \n    m: individuals that are hetrozygous for a factor\
            \n    n: individuals that are homozygous recessive\
            \nOPTIONS:\
            \n    -h | --help: displays this message
            \nDESCRIPTION:\
            \n  Computes the probablity that two randomly selected mating organisms will produce an individual possessing a dominant allele
            ", usage_str(prog_name))
}

fn exit_on_usage(prog_name: &str, msg: Option<&str>) {
    if msg.is_some() {println!("error: {}", msg.unwrap());}
    let path = Path::new(prog_name);
    let prog_name = path.file_name().unwrap().to_str().unwrap();
    println!("{}", help_str(prog_name));
    std::process::exit(0);
}

fn exit_if_help(args: &Vec<String>) {
    let path = Path::new(&args[0]);
    let prog_name = path.file_name().unwrap().to_str().unwrap();
    for arg in args {
        if arg == "-h" || arg == "--help" {
            println!("{}", help_str(prog_name));
            std::process::exit(0);
        }
    }
}

fn parse_u32_arg(args: &Vec<String>, index: usize, name: &str) -> u32 {
    let out = (&args[index]).parse::<u32>();
    if out.is_err() {exit_on_usage(&args[0], Some(&format!("expected {} to be a u32", name)))}
    let out = out.unwrap();
    out
}

fn main() {
    let args = std::env::args().collect::<Vec<String>>();
    exit_if_help(&args);
    if args.len() != 4 {exit_on_usage(&args[0], Some("invalid number of arguments"));}
    let k = parse_u32_arg(&args, 1, stringify!(k));
    let m = parse_u32_arg(&args, 2, stringify!(m));
    let n = parse_u32_arg(&args, 3, stringify!(n));

    println!("{}", prob_dominant_child(k, m, n));

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

    #[test]
    fn test_prob_dominant_child() {
        assert_eq!(prob_dominant_child(2,2,2), 0.78333);
    }
}
