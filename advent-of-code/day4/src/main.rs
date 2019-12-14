//! this crate's purpose is to explore password combinations given a few specified criterias that
//! password fits in

pub mod password_search;


const PASSWORD_RANGE: (u32, u32) = (240920, 789857);

fn main() {
    let v = password_search::compute_possible_password_combinations(PASSWORD_RANGE);

    println!("pass {:?}", v.len());
}
