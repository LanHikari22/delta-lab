use std::collections::HashMap;
use std::iter;
use std::str::FromStr;

#[derive(Debug)]
enum DNABase {
    A,
    C,
    G,
    T,
}

impl DNABase {
    pub fn from(dna_base: char) -> Result<Self, ()> {
        match dna_base {
            'A' => Ok(Self::A),
            'C' => Ok(Self::C),
            'G' => Ok(Self::G),
            'T' => Ok(Self::T),
            _ => Err(()),
        }
    }

    pub fn to(&self) -> char {
        match &self {
            DNABase::A => 'A',
            DNABase::C => 'C',
            DNABase::G => 'G',
            DNABase::T => 'T',
        }
    }

    /// takes the complementary of a DNA base. Complementary pairs must always go together
    /// in two strands of DNA: AT and CG.
    pub fn complement(self) -> Self {
        match self {
            DNABase::A => DNABase::T,
            DNABase::C => DNABase::G,
            DNABase::G => DNABase::C,
            DNABase::T => DNABase::A,
        }
    }
}

#[derive(Debug)]
enum RNABase {
    A,
    C,
    G,
    U,
}

impl RNABase {
    pub fn from(rna_base: char) -> Result<Self, ()> {
        match rna_base {
            'A' => Ok(Self::A),
            'C' => Ok(Self::C),
            'G' => Ok(Self::G),
            'U' => Ok(Self::U),
            _ => Err(()),
        }
    }

    pub fn to(&self) -> char {
        match &self {
            RNABase::A => 'A',
            RNABase::C => 'C',
            RNABase::G => 'G',
            RNABase::U => 'U',
        }
    }
}

#[derive(Debug)]
struct DNASeq {
    pub seq: Vec<DNABase>,
}

impl FromStr for DNASeq {
    type Err = ();

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        let mut res = Self { seq: vec![] };

        for c in s.chars().filter(|c| !c.is_whitespace()) {
            res.seq.push(DNABase::from(c)?);
        }

        Ok(res)
    }
}

impl DNASeq {
    /// returns the count of all 4 bases of this DNA sequence
    pub fn count(self) -> DNABaseReport {
        let mut report = DNABaseReport {
            a: 0,
            c: 0,
            g: 0,
            t: 0,
        };

        // count bases
        for b in self.seq {
            match b {
                DNABase::A => report.a += 1,
                DNABase::C => report.c += 1,
                DNABase::G => report.g += 1,
                DNABase::T => report.t += 1,
            }
        }

        report
    }

    pub fn to_rna(self) -> RNASeq {
        let mut res = RNASeq { seq: vec![] };

        for b in self.seq {
            match b {
                DNABase::A => res.seq.push(RNABase::A),
                DNABase::C => res.seq.push(RNABase::C),
                DNABase::G => res.seq.push(RNABase::G),
                DNABase::T => res.seq.push(RNABase::U),
            }
        }

        res
    }
}

#[derive(Debug)]
struct RNASeq {
    pub seq: Vec<RNABase>,
}

impl FromStr for RNASeq {
    type Err = ();

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        let mut res = Self { seq: vec![] };

        for c in s.chars().filter(|c| !c.is_whitespace()) {
            res.seq.push(RNABase::from(c)?);
        }

        Ok(res)
    }
}

impl RNASeq {
    /// decodes the RNA sequence into a protein
    /// @pre the RNA sequence must be divisible by 3
    pub fn translate(self) -> Result<char, ()> {
        let mut it = self.seq.iter();

        while let Some(val) = 
            RNASeq::map_triple(&mut it)
            .map(|s| RNA_CODON_TABLE[s.as_str()])
            .next()
        {                
            return Ok(val)
        }

        Err(())
    }

    /// input iterator sampled. Gets a triplet string
    fn map_triple<'a, I>(iter: I) -> impl Iterator<Item = String>
        where I: Iterator<Item= &'a RNABase>, 
    {
        let res = iter
            .take(3)
            .fold(String::new(), |acc, c| acc + &c.to().to_string());

        let res = if res == "" {None} else {Some(res)};
        
        res.into_iter()
    }
}

lazy_static! {
    /// $ is the stop condition of the protein
    /// proteins use 20 characters from the alphabet short of
    /// B J O U X Z
    static ref RNA_CODON_TABLE: HashMap<&'static str, char> = [
        ("UUC", 'F'), ("CUC", 'L'), ("AUC", 'I'), ("GUC", 'V'),
        ("UUA", 'L'), ("CUA", 'L'), ("AUA", 'I'), ("GUA", 'V'),
        ("UUG", 'L'), ("CUG", 'L'), ("AUG", 'M'), ("GUG", 'V'),
        ("UCU", 'S'), ("CCU", 'P'), ("ACU", 'T'), ("GCU", 'A'),
        ("UCC", 'S'), ("CCC", 'P'), ("ACC", 'T'), ("GCC", 'A'),
        ("UCA", 'S'), ("CCA", 'P'), ("ACA", 'T'), ("GCA", 'A'),
        ("UCG", 'S'), ("CCG", 'P'), ("ACG", 'T'), ("GCG", 'A'),
        ("UAU", 'Y'), ("CAU", 'H'), ("AAU", 'N'), ("GAU", 'D'),
        ("UAC", 'Y'), ("CAC", 'H'), ("AAC", 'N'), ("GAC", 'D'),
        ("UAA", '$'), ("CAA", 'Q'), ("AAA", 'K'), ("GAA", 'E'),
        ("UAG", '$'), ("CAG", 'Q'), ("AAG", 'K'), ("GAG", 'E'),
        ("UGU", 'C'), ("CGU", 'R'), ("AGU", 'S'), ("GGU", 'G'),
        ("UGC", 'C'), ("CGC", 'R'), ("AGC", 'S'), ("GGC", 'G'),
        ("UGA", '$'), ("CGA", 'R'), ("AGA", 'R'), ("GGA", 'G'),
        ("UGG", 'W'), ("CGG", 'R'), ("AGG", 'R'), ("GGG", 'G'),

    ].iter().copied().collect();
}

/// represents count of each base
#[derive(Debug, PartialEq)]
struct DNABaseReport {
    a: i32,
    c: i32,
    g: i32,
    t: i32,
}

/// a valid DNA sequence contains only the symbols A, C, G, T, and whitespace.
fn is_valid_dna_string(dna_str: &str) -> bool {
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        if c != 'A' && c != 'C' && c != 'G' && c != 'T' {
            return false;
        }
    }
    true
}

/// a valid RNA sequence contains only the symbols A, C, G, U, and whitespace.
fn is_valid_rna_string(dna_str: &str) -> bool {
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        if c != 'A' && c != 'C' && c != 'G' && c != 'U' {
            return false;
        }
    }
    true
}

/// a valid DNA base character must be A, C, G, T, or whitespace.
fn is_valid_dna_base(base: char) -> bool {
    base == 'A' || base == 'C' || base == 'G' || base == 'T' || base.is_whitespace()
}

fn is_valid_rna_base(base: char) -> bool {
    base == 'A' || base == 'C' || base == 'G' || base == 'U' || base.is_whitespace()
}

/// converts a DNA sequence to an RNA sequence
/// @pre is_valid_dna_string(dna_str)
fn to_rna(dna_str: &str) -> String {
    assert!(is_valid_dna_string(dna_str));
    dna_str.replace("T", "U")
}

/// takes the complementary of a DNA base. Complementary pairs must always go together
/// in two strands of DNA: AT and CG.
/// @pre is_valid_dna_base(base)
fn complement_dna_base(base: char) -> char {
    assert!(is_valid_dna_base(base));
    match base {
        'A' => 'T',
        'C' => 'G',
        'G' => 'C',
        'T' => 'A',
        _ => unreachable!("invalid state for a valid DNA base"),
    }
}

/// genereates the reverse complement of a DNA string
/// @pre is_valid_dna_string(dna_str)
fn dna_revc(dna_str: &str) -> String {
    assert!(is_valid_dna_string(dna_str));

    let mut v = dna_str
        .chars()
        .filter(|c| !c.is_whitespace())
        .map(|c| complement_dna_base(c))
        .collect::<Vec<_>>();
    v.reverse();

    v.iter().collect::<String>()
}

/// calculate the GC content if a DNA sequence. The GC sequence is the ratio
/// of G and C bases present against other symbols
/// @pre is_valid_dna_string(dna_str)
fn dna_calc_gc_content(dna_str: &str) -> f32 {
    assert!(is_valid_dna_string(dna_str));

    let mut symbols = 0;
    let mut gc_symbols = 0;
    for c in dna_str.chars().filter(|c| !c.is_whitespace()) {
        if c == 'G' || c == 'C' {
            gc_symbols += 1;
        }
        symbols += 1;
    }

    gc_symbols as f32 / symbols as f32
}

/// calculates the GC content of all DNA sequences in #dna_seq_map and returns
/// the one with the largest GC content
fn calculate_largest_gc_content(dna_seq_map: &HashMap<String, String>) -> (&str, f32) {
    let mut max_name: Option<&str> = None;
    let mut max_gc: Option<f32> = None;
    for name in dna_seq_map.keys() {
        // println!("{}: {}", name, dna_calc_gc_content(&dna_seq_map[name]) * 100f32);

        if max_name.is_none() {
            assert!(max_gc.is_none());
            max_name = Some(name);
            max_gc = Some(dna_calc_gc_content(&dna_seq_map[name]));
        } else {
            let gc = dna_calc_gc_content(&dna_seq_map[name]);
            if gc > max_gc.unwrap() {
                max_name = Some(name);
                max_gc = Some(gc);
            }
        }
    }

    (&max_name.unwrap(), max_gc.unwrap())
}

/// calculates the hamming distance of two equal-length DNA sequences
/// @pre is_valid_dna_string(dna_seq_a)
/// @pre is_valid_dna_string(dna_seq_b)
/// @pre dna_seq_a.len() == dna_seq_b.len()
fn dna_calc_hamming_dist(dna_seq_a: &str, dna_seq_b: &str) -> i32 {
    assert!(is_valid_dna_string(dna_seq_a));
    assert!(is_valid_dna_string(dna_seq_b));
    assert!(dna_seq_a.len() == dna_seq_b.len());

    dna_seq_a
        .chars()
        .zip(dna_seq_b.chars())
        .map(|(c1, c2)| if c1 != c2 { 1 } else { 0 })
        .sum()
}


#[cfg(test)]
mod tests {
    use super::*;

    mod RNATests {
        use super::super::*;
        #[test]
        fn test_get_triple() {                
            let td = "AUU CCC GUC";                
            let rna = td.parse::<RNASeq>().unwrap();
            println!("td: {0:?}, rna: {1:?}", td, rna);

            let mut it0 = rna.seq.iter();                
            print!("it0: ");
            while let Some(val) = it0.next() {                    
                print!("{0:?}, ", val)
            }
            println!("");

            let mut it1 = rna.seq.iter();
            print!("it1: ");
            for val in RNASeq::map_triple(&mut it1) {
            // while let Some(val) = RNASeq::map_triple(&mut it1).next() {
                print!("{0:?}, ", val)
            }
            println!("");


            println!("---- end stdout ----");
            panic!("stdout")
        }

        fn test_translate() {

        }
    }


    #[test]
    fn test_cust_chunk() {
        fn cust_chunk<'a, I>(iter: I, n: usize) -> impl Iterator<Item = String>
            where I: Iterator<Item= &'a char>, 
        {
            let res = iter
                .take(n)
                .fold(String::new(), |acc, c| acc + &c.to_string());

            let res = if res == "" {None} else {Some(res)};
            
            res.into_iter()
        }

        let td = ['A', 'B', 'C', 'D', 'E', 'F'];


        // functions as required, but `it` is sampled each time for this to work.
        // it would be better to sample the output iterator instead
        let mut it = td.iter();
        print!("[");
        while let Some(val) = cust_chunk(&mut it, 3).next() {                
            print!("{0}, ", val);
        }
        println!("]");
        // [ABC, DEF, ]


        // only samples the output iterator once, then stops. Can you return an iterator
        // that would sample the input `it` again on .next()?
        // I just wanted to see if I could do this without introducing new types
        let mut it = td.iter();
        print!("[");
        for val in cust_chunk(&mut it, 3) {
            print!("{0}, ", val);
        }
        println!("]");
        // [ABC, ]

        println!("\n---- end stdout ----");
        panic!("stdout")
    }
    

}
