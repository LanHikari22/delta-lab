// file reading
use std::path::Path;
use std::error::Error;
use std::fs::File;
use std::io::prelude::*; // seems needed to include the Read trait for std::fs::File

// for reading from lines
use std::io::BufReader;

use std::vec::Vec;

const INPUT_PATH: &str = "challenge1.in";

fn read_module_masses(input_path: &str) -> Vec<u32> {
    let path = Path::new(input_path);
    // println!("{}", format!("file: {}", path.display()));

    let file = match File::open(&path) {
        Err(why) => panic!("couldn't open {}: {}", path.display(), why.description()),
        Ok(file) => file,
    }; 
    let file = BufReader::new(file);

    let mut out: Vec<u32> = vec![];
    for (i, line) in file.lines().enumerate() {
        let line = match line {
            Err(why) => panic!("error while reading line: {}", why.description()),
            Ok(line) => line,
        };
        let num = match line.parse::<u32>() {
            Err(why) => panic!("could not parse \"{}\" on line {}: {}", line, i, why.description()),
            Ok(num) => num,
        };

        out.push(num);
    }

    // println!("out {:?}", out);

    return out;
}


// calculates fuel required for a given mass. This does not include itself.
fn calc_fuel_required(mass: u32) -> u32 {
    if mass / 3 >= 2 {mass / 3 - 2} else {0}
}

// calculates the mass of the fuel required to carry :mass:, but also the amount of additional
// fuel required to carry that fuel!
fn calc_total_fuel_required(mass: u32) -> u32 {
    let mut fuel_mass = calc_fuel_required(mass);
    let mut additional_mass = calc_fuel_required(fuel_mass);
    while additional_mass > 0 {
        fuel_mass += additional_mass;
        additional_mass = calc_fuel_required(additional_mass);
    }
    
    return fuel_mass;
}

fn main() {
    let module_masses: Vec<u32> = read_module_masses(INPUT_PATH);
    println!("out {:?}", module_masses.iter()
        .map(|module_mass| calc_total_fuel_required(*module_mass))
        .sum::<u32>());
    // println!("out {:?}", module_masses.iter()
        // .fold(0, |acc, module_mass| acc + calc_fuel_required(*module_mass)));
    // println!("module_masses {:?}", module_masses);
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_read_module_masses() {
        let module_masses = read_module_masses(INPUT_PATH);
        println!("{:?}", module_masses)
    }

    #[test]
    fn test_calc_fuel_required() {
        assert_eq!(calc_fuel_required(12), 2);
        assert_eq!(calc_fuel_required(14), 2);
        assert_eq!(calc_fuel_required(1969), 654);
        assert_eq!(calc_fuel_required(100756), 33583);
    }

    #[test]
    fn test_calc_total_fuel_required() {
        assert_eq!(calc_total_fuel_required(14), 2);
        assert_eq!(calc_total_fuel_required(1969), 966);
        assert_eq!(calc_total_fuel_required(100756), 50346);
    }

}
