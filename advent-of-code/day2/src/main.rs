#[macro_use]
extern crate generator;
use generator::Gn;


fn next_mult_of(n: u32) -> generator::Generator<'static, (), u32> {
    Gn::new_scoped(move |mut s| { // must explicitly move to change capture environment for closure and allow n to be used
        for a in 0.. {
            if a % n == 0 {
                s.yield_(a);
            }
        }
        done!();
    })
}

mod intcode;
const INPUT_TAPE: &str = "tape.in";

fn usage_exit() {
    use std::process;
    println!("usage: prog p1 p2");
    println!("  where:");
    println!("      p1: The value in position 1 in the program to modify");
    println!("      p2: The value in position 2 in the program to modify");
    std::process::exit(0);

}

fn run_and_display_program(input_tape: &[i32]) {
    let output_tape: Vec<i32> = match intcode::execute_tape(&input_tape) {
        Err(code) => panic!("failed to execute tape: {:?}", code),
        Ok(output_tape) => output_tape,
    };

    println!("program:");
    for inst_res in intcode::read_next_instruction(&input_tape) {
        let inst = inst_res.unwrap();
        println!("{:?}", inst);
    }

    println!("{:?}", output_tape);
}


fn main_experiment_with_program() { 
    use std::env;
    use std::process;
    let args = std::env::args().collect::<Vec<String>>();
    if args.len() != 3 {
        usage_exit();
    }
    let mut input_tape: Vec<i32> = intcode::read_tape(INPUT_TAPE);
    input_tape[1] = args[1].parse::<i32>().unwrap();
    input_tape[2] = args[2].parse::<i32>().unwrap();
    run_and_display_program(&input_tape);
}


fn run_program(input_tape: &mut Vec<i32>, p1: i32, p2: i32) -> i32 {
    input_tape[1] = p1;
    input_tape[2] = p2;
    
    let output_tape: Vec<i32> = match intcode::execute_tape(&input_tape) {
        Err(code) => panic!("failed to execute tape: {:?}", code),
        Ok(output_tape) => output_tape,
    };

    output_tape[0]
}


fn calc_parameters(input_tape: &mut Vec<i32>, output_value: i32) -> Result<(i32, i32), (i32, i32)> {
    // Program logic:
    // F(a, b) = A + B*a + b
    //  where
    //      A = prog(0, 0)
    //      B = prog(1, 0) - A

    let A = run_program(input_tape, 0, 0);
    let B = run_program(input_tape, 1, 0) - A;
    println!("A: {}, B: {}", A, B);

    // given F(a, b) = C => A + B*a + b = C:
    //  a = (C-A) / B
    //  b = (C-A) % B
    let C = output_value;
    let a = (C-A) / B;
    let b = (C-A) % B;
   
    let out_of_bounds = |x: i32| x < 0 || x > 99;

    if out_of_bounds(a) || out_of_bounds(b) {
        return Err((a, b))
    }

    Ok((a,b))
}

fn main() {
    use std::env;
    use std::process;
    let args = std::env::args().collect::<Vec<String>>();
    
    let mut input_tape: Vec<i32> = intcode::read_tape(INPUT_TAPE);

    let C = 19690720;
    match calc_parameters(&mut input_tape, C) {
        Err(tup) => println!("error: invalid configuration: a: {}, b: {}", tup.0, tup.1),
        Ok(tup) => println!("{}: a: {}, b: {}", tup.0 * 100 + tup.1, tup.0, tup.1),
    };

}
