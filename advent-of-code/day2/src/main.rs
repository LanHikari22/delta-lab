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
fn main() {
    intcode::read_tape(INPUT_TAPE);

    let inst = intcode::read_instruction(&[1,0,0,1]);
    println!("{:?}", inst);

}
