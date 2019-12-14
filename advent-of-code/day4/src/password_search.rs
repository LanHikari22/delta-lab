//! this module handles the input space of passwords and different criterias they have to adhere
//! to

/// calculates all possible password combinations given a few specified criterias
pub fn compute_possible_password_combinations(password_range: (u32, u32)) -> Vec<u32> {
        (password_range.0..password_range.1)
            .filter(|&i| no_decreasing_digits_left_to_right(i))
            .filter(|&i| has_two_adjacent_digits(i))
            .filter(|&i| has_strictly_two_adjacent_digits(i))
            .collect::<Vec<u32>>()
}


/// converts $n to a vector of its digits
pub fn to_digits(n: u32) -> Vec<u32> {
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


/// breaks down $i into its digits, and adjacent identical digits together
/// - returns [(digit, rept)]: a vector of each digit, and how many times it repeats
/// # Example
/// ```
/// assert_eq!(cluster_same_digits(1223334, [(4,1), (3,3), (2,2), (1,1)]))
/// assert_eq!(cluster_same_digits(100, [(0,2), (1,1)]))
/// ```
pub fn cluster_same_digits(i: u32) -> Vec<(u32, u32)> {
    let mut out: Vec<(u32, u32)> = vec![];

    for digit in to_digits(i) {
        let len = out.len();
        if len == 0 {
            out.push((digit, 1));
            continue;
        } 
        let (last_digit, last_rept) = out[out.len()-1];
        if last_digit == digit {
            out[len-1] = (digit, last_rept + 1);
        } else {
            out.push((digit, 1))
        }
    }

    out
}


/// checks if $i contains contains two digits in a row
/// in any position
/// # Example
/// ```
/// assert_eq!(has_two_adjacent_digits(123445, true));
/// assert_eq!(has_two_adjacent_digits(112344, true));
/// assert_eq!(has_two_adjacent_digits(121454, false));
/// ```
pub fn has_two_adjacent_digits(i: u32) -> bool {
    for (_digit, rept) in cluster_same_digits(i) {
        if rept > 1 {return true;}
    }

    false
}


pub fn has_strictly_two_adjacent_digits(i: u32) -> bool {
    for (_digit, rept) in cluster_same_digits(i) {
        if rept == 2 {return true;}
    }

    false
}


/// checks that the digits of $i only increase or stay the same from the left-most position.
/// * param `i`- The integer to check
/// * return `true` if `i` only increases left to right
/// # Example
/// ```
/// assert_eq!(no_decreasing_digits_left_to_Right(123455, true));
/// assert_eq!(no_decreasing_digits_left_to_Right(123450, false));
/// ```
pub fn no_decreasing_digits_left_to_right(i: u32) -> bool {
    let mut prev_digit: Option<u32> = None;

    for digit in to_digits(i) {
        match prev_digit {
            None => {},
            Some(prev) => {
                if prev < digit {
                    return false;
                }
            }
        }
        prev_digit = Some(digit);
    }

    true
}


#[cfg(test)]
mod tests {
    use super::*;
    use rand::prelude::*;

    #[test]
    fn test_compute_possible_password_combinations() {
        const PASSWORD_RANGE: (u32, u32) = (240920, 789857);

        let v = compute_possible_password_combinations(PASSWORD_RANGE);

        assert_eq!(v.contains(&244567), true);
        assert_eq!(v.contains(&245568), true);

        // for i in v {
            // println!("{}", i)
        // }
        // panic!();

    }

    #[test]
    fn test_to_digits() {
        fn run_test(n: u32, exp: &[u32]) {
            let v = to_digits(n);
            assert_eq!(v, exp, "failed for n={}", n);
        }

        run_test(654321, &vec![1,2,3,4,5,6]);
        run_test(0, &vec![0]);
        run_test(10, &vec![0,1]);
        run_test(101, &vec![1,0,1]);
        run_test(55066, &vec![6,6,0,5,5]);

    }

    #[test]
    fn test_has_two_adjacent_digits() {
        fn run_test(n: u32, exp: bool) {
            assert_eq!(has_two_adjacent_digits(n), exp, "failed for n={}", n);
        }

        run_test(11, true);
        run_test(0, false);
        run_test(12345, false);
        run_test(1234566, true);
        run_test(122344566, true);
        run_test(90221, true);
        run_test(244567, true);
    }

    #[test]
    fn test_cluster_same_digits() {
        fn run_test(n: u32, exp: &[(u32, u32)]) {
            assert_eq!(cluster_same_digits(n), exp, "failed for n={}", n);
        }
        
        run_test(11, &[(1,2)]);
        run_test(0, &[(0, 1)]);
        run_test(12345, &[(5,1), (4,1), (3,1), (2,1), (1,1)]);
        run_test(1234566, &[(6,2), (5,1), (4,1), (3,1), (2,1), (1,1)]);
        run_test(1223334, &[(4,1), (3,3), (2,2), (1,1)]);
}

    #[test]
    fn test_no_decreasing_digits_left_to_right() {
        fn run_test(n: u32, exp: bool) {
            assert_eq!(no_decreasing_digits_left_to_right(n), exp, "failed for n={}", n);
        }

        run_test(123, true);
        run_test(1230, false);
        run_test(55066, false);
        run_test(244567, true);
        run_test(0, true);
    }

}
