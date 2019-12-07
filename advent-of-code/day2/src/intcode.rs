// for reading
use std::path::Path;
use std::error::Error;
use std::fs::File;
use std::io::prelude::*; // seems needed to include the Read trait for std::fs::File

// for reading from lines
use std::io::BufReader;

use std::vec::Vec;

use generator::Gn;


#[derive(Debug, PartialEq)]
pub enum InstructionErrorCode {
    NoInstructionFound,
    InvalidParamCount, // instructions expect more bytes as parameters than is available in the tape
    InvalidInstruction,
}


pub enum TapeExecutionError {
    ParamPositionOutOfBounds {p1: bool, p2: bool, res: bool},
    OutOfBoundCalculation,
    TapeParsingError {code:InstructionErrorCode, pos:usize},
}


#[derive(Debug, PartialEq, Clone, Copy)]
pub enum InstructionCode {
    Add = 0,
    Sub = 1,
    End = 99,
}


#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Instruction {
    Add {p1_pos: u8, p2_pos: u8, res_pos: u8, inst_size: usize},
    Sub {p1_pos: u8, p2_pos: u8, res_pos: u8, inst_size: usize},
    End {inst_size: usize},
}


pub fn read_tape(input_path: &str) -> Vec<u8> {
    let path = Path::new(input_path);
    // println!("{}", format!("file: {}", path.display()));

    let file = match File::open(&path) {
        Err(why) => panic!("couldn't open {}: {}", path.display(), why.description()),
        Ok(file) => file,
    }; 
    let mut file = BufReader::new(file);

    let mut content = String::new();
    match file.read_to_string(&mut content) {
        Err(why) => panic!("couldn't read {} to string: {}", path.display(), why.description()),
        Ok(_bytes_read) => (),
    }

    fn is_split_char(c: char) -> bool {
        vec!['\n', ','].iter().any(|split_char| c == *split_char)
    }

    let mut out: Vec<u8> = vec![];
    for token in content
            .split(is_split_char)
            .filter(|token| *token != "") {
        let num = match token.parse::<u8>() {
            Err(why) => panic!("could not parse \"{}\": {}", token, why.description()),
            Ok(num) => num,
        };

        out.push(num);
    }

    // println!("out {:?}", out);

    return out;
}


pub fn execute_tape(tape: &[u8]) -> Result<Vec<u8>, TapeExecutionError>{
    let mut output_tape: Vec<u8> = tape.iter().map(|i: &u8| *i).collect();

    for (i, inst_res) in read_next_instruction(tape).enumerate() {
        let inst = match inst_res {
            Err(code) => return Err(TapeExecutionError::TapeParsingError {code, pos:4*i }), // this pos is only true because all instructions before End are same-size of 4
            Ok(inst) => inst,
        };
        
        execute_instruction(&inst, &mut output_tape)?;
    }

    Ok(output_tape)
}


pub fn read_instruction(tape: &[u8]) -> Result<Instruction, InstructionErrorCode> {
    // ensure at least one byte containing the instruction is available
    if tape.len() < 1 {
        return Err(InstructionErrorCode::NoInstructionFound);
    }
    
    if tape[0] == InstructionCode::Add as u8 {
        if tape.len() < 4 { return Err(InstructionErrorCode::InvalidParamCount); }
        return Ok(Instruction::Add {p1_pos: tape[1], p2_pos: tape[2], res_pos: tape[3], inst_size: 4})
    } else if tape[0] == InstructionCode::Sub as u8 {
        if tape.len() < 4 { return Err(InstructionErrorCode::InvalidParamCount); }
        return Ok(Instruction::Sub {p1_pos: tape[1], p2_pos: tape[2], res_pos: tape[3], inst_size: 4})
    } else if tape[0] == InstructionCode::End as u8 {
        return Ok(Instruction::End {inst_size: 1})
    } else {
        return Err(InstructionErrorCode::InvalidInstruction);
    }
}


pub fn execute_instruction(inst: &Instruction, output_tape: &mut Vec<u8>) -> Result<(), TapeExecutionError> {
    fn check_positions_in_bound(p1_pos: u8, p2_pos: u8, res_pos: u8, tape_length: usize) -> Result<(), TapeExecutionError> {
        if [p1_pos, p2_pos, res_pos].iter().any(|&pos| pos as usize >= tape_length) {
            let v = [p1_pos, p2_pos, res_pos].iter().map(|&pos| pos as usize >= tape_length).collect::<Vec<bool>>();
            return Err(TapeExecutionError::ParamPositionOutOfBounds {p1: v[0], p2: v[1], res: v[2]});
        }
        Ok(())
    }

    match inst {
        Instruction::Add {p1_pos, p2_pos, res_pos, ..} => {
            check_positions_in_bound(*p1_pos, *p2_pos, *res_pos, output_tape.len())?;
            let a = output_tape[*p1_pos as usize];
            let b = output_tape[*p2_pos as usize];
            output_tape[*res_pos as usize] = a + b;
        },
        Instruction::Sub {p1_pos, p2_pos, res_pos, ..} => {
            check_positions_in_bound(*p1_pos, *p2_pos, *res_pos, output_tape.len())?;
            let a = output_tape[*p1_pos as usize];
            let b = output_tape[*p2_pos as usize];
            if b > a {return Err(TapeExecutionError::OutOfBoundCalculation)}
            output_tape[*res_pos as usize] = a - b;
        },
        _ => {},
    };

    Ok(())
}


pub fn get_instruction_size(inst: &Instruction) -> usize {
    match inst {
        Instruction::Add {inst_size: s, ..} => *s,
        Instruction::Sub {inst_size: s, ..} => *s,
        Instruction::End {inst_size: s, ..} => *s,
    }
}


// creates a generator for use in a foreach loop to read the next instruction
fn read_next_instruction<'a>(tape: &'a [u8]) -> generator::Generator<'a, (), Result<Instruction, InstructionErrorCode>> {
    Gn::new_scoped(move |mut s| { // must explicitly move to change capture environment for closure to use arguments
        let mut cur: usize = 0;
        loop {
            let inst_res = read_instruction(&tape[cur..]);

            match inst_res {
                Err(code) => {
                    s.yield_(Err(code));
                    // error occured, there is no next instruction
                    done!();
                },
                Ok(inst) => {
                    s.yield_(Ok(inst));
                    cur += get_instruction_size(&inst);
                    // last instruction reached
                    if let Instruction::End {..} = inst {done!()}
                },
            };
        }
    })
}


#[cfg(test)]
mod tests {
    use super::*;

    mod test_data {
        use super::*;

        pub struct TestData {
            pub tape: Vec<u8>,
            pub instructions: Vec<Result<Instruction, InstructionErrorCode>>,
            pub output_tape: Vec<u8>,
        }

        pub fn get_case_typical() -> TestData {
            let tape = vec![
                InstructionCode::Add as u8, 9u8, 10u8, 11u8, 
                InstructionCode::Sub as u8, 12u8, 13u8, 14u8,
                InstructionCode::End as u8, 
                1u8, 2u8, 0u8, 5u8, 3u8, 0u8
            ];
            let instructions = vec![
                Ok(Instruction::Add {p1_pos: 9u8, p2_pos: 10u8, res_pos: 11u8, inst_size: 4}),
                Ok(Instruction::Sub {p1_pos: 12u8, p2_pos: 13u8, res_pos: 14u8, inst_size: 4}),    
                Ok(Instruction::End {inst_size: 1}),
            ];
            let mut output_tape = tape.clone();
            output_tape[11] = 3u8;
            output_tape[14] = 2u8;
            
            return TestData {tape, instructions, output_tape};
        }

        pub fn get_case_early_end() -> TestData {
            let tape = vec![
                InstructionCode::End as u8, 
                InstructionCode::Add as u8, 9u8, 10u8, 11u8, 
                InstructionCode::Sub as u8, 12u8, 13u8, 14u8,
                0u8, 0u8, 0u8, 0u8, 0u8, 0u8
            ];
            let instructions = vec![
                Ok(Instruction::End {inst_size: 1}),
            ];
            let output_tape = tape.clone();
            return TestData {tape, instructions, output_tape};
        }

        pub fn get_case_empty() -> TestData {
            return TestData {tape: vec![], instructions: vec![Err(InstructionErrorCode::NoInstructionFound)], output_tape: vec![]};
        }
    }
    

    #[test]
    fn test_read_instruction() {
        assert_eq!(read_instruction(&[InstructionCode::Add as u8, 10, 11, 12]).unwrap(),
                   Instruction::Add {p1_pos: 10, p2_pos: 11, res_pos: 12, inst_size: 4});
        
        assert_eq!(read_instruction(&[InstructionCode::End as u8, 10, 11, 12]).unwrap(),
                   Instruction::End {inst_size: 1});
        
        assert_eq!(read_instruction(&[]), Err(InstructionErrorCode::NoInstructionFound));
        
        assert_eq!(read_instruction(&[InstructionCode::Add as u8, 10, 11]),
                   Err(InstructionErrorCode::InvalidParamCount));

        assert_eq!(read_instruction(&[200]), Err(InstructionErrorCode::InvalidInstruction));
    }

    #[test]
    fn test_read_next_instruction() {
        fn run_test(tape: &[u8], instructions: &[Result<Instruction, InstructionErrorCode>]) {
            let act_instructions = read_next_instruction(tape).collect::<Vec<Result<Instruction, InstructionErrorCode>>>();

            assert_eq!(act_instructions.len(), instructions.len(), "size of instructions does not match");

            // stdout showing each instruction
            for (i, inst_res) in read_next_instruction(tape).enumerate() {
                assert_eq!(inst_res, instructions[i]);
                println!("inst {}: {:?}", i, inst_res);
            }
        }
        
        let td = test_data::get_case_typical();
        run_test(&td.tape, &td.instructions);
        
        let td = test_data::get_case_early_end();
        run_test(&td.tape, &td.instructions);

        let td = test_data::get_case_empty();
        run_test(&td.tape, &td.instructions);

        // println!("Test OK");
        // panic!("in development");
    }

    #[test]
    fn test_execute_tape() {
        let td = test_data::get_case_typical();
        let output_tape = match execute_tape(&td.tape) {
            Err(code) => {assert!(false, stringify!(code)); panic!()},
            Ok(output_tape) => output_tape,
        };

        assert_eq!(&output_tape, &td.output_tape);

        println!("act {:?}", output_tape);
        println!("exp {:?}", td.output_tape);

        println!("Test OK");
        // panic!("in development");
    }
}
