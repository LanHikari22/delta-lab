// checks if s is in any occurances in v
pub fn str_in(s: &str, v: &[&str]) -> bool {
    v.iter().any(|&e| s == e)
}

pub fn char_in(c: char, v: &[char]) -> bool {
    v.iter().any(|&e| c == e)
}
