use criterion::{black_box, criterion_group, criterion_main, Criterion};

#[macro_use]
extern crate generator;
use generator::Gn;

fn next_digit_of(n: u32) -> generator::Generator<'static, (), u32> {
    Gn::new_scoped(move |mut s| { // must explicitly move to change capture environment for closure and allow n to be used
        let mut cur = n;

        if cur == 0 {
            s.yield_(cur);
        }

        while cur != 0 {
            let digit = cur % 10;
            s.yield_(digit);
            cur = cur / 10;
        }

        done!();
    })
}


fn to_digits(n: u32) -> Vec<u32> {
    let mut cur = n;
    let mut out: Vec<u32> = vec![];

    if cur == 0 {
        out.push(cur);
    }

    while cur != 0 {
        let digit = cur % 10;
        out.push(digit);
        cur = cur / 10;
    }

    out
}


pub fn bench_next_digits_of(c: &mut Criterion) {
    c.bench_function("next_digit_of (using generator object)", |b| b.iter(|| {
        next_digit_of(black_box(123456)).collect::<Vec<u32>>()
    }));
}


pub fn bench_to_digits(c: &mut Criterion) {
    c.bench_function("to_digits (create vector)", |b| b.iter(|| {
        to_digits(black_box(123456)).into_iter().collect::<Vec<u32>>()
    }));
}


criterion_group!(benches, 
    bench_next_digits_of, 
    bench_to_digits,
);
criterion_main!(benches);
