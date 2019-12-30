use std::str::FromStr;
use std::error::Error;
use std::fmt;
use std::ops;

/// describes whether a spot is empty, or contains a bug in it.
#[derive(Debug, PartialEq, Clone, Copy)]
pub enum BugScannerState {
    Space,
    Bug,
}

#[derive(Debug, PartialEq, Clone)]
pub struct BugScannerGrid {
    buf: Vec<BugScannerState>,
    x: u8,
    y: u8,
}

#[derive(Debug, PartialEq)]
pub enum BugScannerGridReadError {
    // ie if each line contained a different number of characters
    InvalidGridConfiguration{exp_x: u8, act_x: u8},
    // if the grid contains something that isn't defined in BugScannerState
    InvalidElementState(char),
}

impl fmt::Display for BugScannerGridReadError {
    fn fmt(&self, formatter: &mut fmt::Formatter) -> fmt::Result {
        write!(formatter, "{}", stringify!(&self)) // FIXME: this doesn't actually format it
    }
}

impl Error for BugScannerGridReadError {
    fn description(&self) -> &str {
        "BugScannerGridReadError occured"
    }

    fn source(&self) -> Option<&(dyn Error + 'static)> {
        Some(self)
    }
}

impl FromStr for BugScannerGrid {
    type Err = BugScannerGridReadError;

    /// Format:
    ///     .: No bug in this space
    ///     #: Bug is present in this space
    ///     \n: New grid row
    ///     Each line must contain an equal number of characters, as it represents the number of
    ///     columns in the grid.
    fn from_str(format: &str) -> Result<Self, Self::Err> {
        let lines = format.split("\n").filter(|&line| !line.is_empty()).collect::<Vec<&str>>();
        let y = lines.len() as u8;
        let x = lines[0].len() as u8;
        let mut grid: Vec<BugScannerState> = vec![];

        for line in lines {
            if line.len() as u8 != x {
                return Err(BugScannerGridReadError::InvalidGridConfiguration {exp_x: x, act_x: line.len() as u8});
            }
            
            for c in line.chars() {
                match c {
                    '#' => grid.push(BugScannerState::Bug),
                    '.' => grid.push(BugScannerState::Space),
                    _ => return Err(BugScannerGridReadError::InvalidElementState(c)),
                }
            }
        }

        Ok(BugScannerGrid {buf: grid, x: x, y: y})
    }
}

impl fmt::Display for BugScannerState {
    fn fmt(&self, formatter: &mut fmt::Formatter) -> fmt::Result {
        use BugScannerState::*;
        match self {
            Bug => write!(formatter, "#"),
            Space => write!(formatter, "."),
        }
    }
}

impl fmt::Display for BugScannerGrid {
    fn fmt(&self, formatter: &mut fmt::Formatter) -> fmt::Result {
        for i in 0..self.buf.len() {
            let x = self.x as usize;
            let row = i / x;
            let col = i % x;

            if i != 0 && i % x == 0 {
                write!(formatter, "\n");
            }

            write!(formatter, "{}", self[row][col]);
        }
        Ok(())
    }
}

impl ops::Index<usize> for BugScannerGrid {
    type Output = [BugScannerState];

    fn index(&self, i: usize) -> &Self::Output {
        if i > self.y as usize {
            panic!("out of bounds: {} > y: {}", i, self.y);
        }
        let row_i = self.x as usize * i;
        let row_f = row_i + self.x as usize;
        &self.buf[row_i..row_f]
    }
}

impl ops::IndexMut<usize> for BugScannerGrid {
    fn index_mut(&mut self, i: usize) -> &mut [BugScannerState] {
        if i > self.y as usize {
            panic!("out of bounds: {} > y: {}", i, self.y);
        }
        let row_i = self.x as usize * i;
        let row_f = row_i + self.x as usize;
        &mut self.buf[row_i..row_f]
    }
}

impl BugScannerGrid {

    /// updates the state of the grid based on a few rules:
    /// - A bug dies (becoming an empty space) unless there is exactly one bug adjacent to it.
    /// - An empty space becomes infested with a bug if exactly one or two bugs are adjacent to it.
    /// - For tiles on an edge, the missing tiles count as space.
    pub fn update(&mut self) {
        use BugScannerState::*;

        // calculate adjacent bug count for every tile
        let mut adjacent_bugs_per_tile: Vec<usize> = vec![];
        for i in 0..self.buf.len() {
            let row = i / self.x as usize;
            let col = i % self.x as usize;
            
            adjacent_bugs_per_tile.push(self.adjacent_bugs(row, col));
        }

        // update tiles
        for i in 0..self.buf.len() {
            let row = i / self.x as usize;
            let col = i % self.x as usize;
            let num_adjacent_bugs = adjacent_bugs_per_tile[i];
            
            match self[row][col] {
                Bug => {
                    if num_adjacent_bugs != 1 {
                        self[row][col] = Space;
                    }
                },
                Space => {
                    if num_adjacent_bugs == 1 || num_adjacent_bugs == 2 {
                        self[row][col] = Bug;
                    }

                },
            }
        }
    }

    pub fn calculate_biodiversity_rating(&self) -> u32 {
        use BugScannerState::*;
        let mut grid_history: Vec<BugScannerGrid> = vec![];
            grid_history.push(self.clone());

        let mut found = false;
        while !found {
            let prev = &grid_history[grid_history.len()-1];
            let mut clone = prev.clone();
            clone.update();

            // check if current state was encountered before
            for record in &grid_history {
                if clone == *record {
                    found = true;
                    break;
                }
            }
            grid_history.push(clone);
        }

        // calculate the biodiversity rating
        let last = &grid_history[grid_history.len()-1];
        let out = last.buf.iter()
                          .enumerate()
                          .map(|(i, &state)| if state == Bug {(i, 1)} else {(i, 0)})
                          .map(|(i, n)| n * u32::pow(2, i as u32))
                          .sum::<u32>();
        out
        
    }

    /// returns how many adjacent cells contain Bugs. This does not include diagonals, only 4
    /// directions.
    fn adjacent_bugs(&self, row: usize, col: usize) -> usize {
        let mut count = 0;
        use BugScannerState::*;

        if col + 1 < self.x as usize && self[row][col+1] == Bug {count += 1}
        if col > 0 && self[row][col-1] == Bug {count += 1}
        if row > 0 && self[row-1][col] == Bug {count += 1}
        if row + 1 < self.y as usize && self[row+1][col] == Bug {count += 1}

        count
    }

}

#[cfg(test)]
mod tests {
    use super::*;

    struct TestData {
        states: [&'static str; 5],
        biodiversity_rating: u32,
    }

    static TEST_DATA: &[TestData] = &[
        TestData {
            states: [
"....#\n\
#..#.\n\
#..##\n\
..#..\n\
#....",

"#..#.\n\
####.\n\
###.#\n\
##.##\n\
.##..", 

"#####\n\
....#\n\
....#\n\
...#.\n\
#.###",

"#....\n\
####.\n\
...##\n\
#.##.\n\
.##.#",

"####.\n\
....#\n\
##..#\n\
.....\n\
##...",
            ],
            biodiversity_rating: 2129920,
        },
    ];
   
    mod BugScannerGridTests {
        use super::*;

        #[test]
        fn test_read() {
            let s1 = "#..\n###";
            let act = s1.parse::<BugScannerGrid>().unwrap();
            use BugScannerState::*;
            let exp = BugScannerGrid {
                buf: vec![Bug, Space, Space, Bug, Bug, Bug],
                x: 3,
                y: 2,
            };
            assert_eq!(act, exp);
        }

        #[test]
        fn test_update() {
            for td in TEST_DATA {
                let mut grid = td.states[0].parse::<BugScannerGrid>().unwrap();
                println!("\ns0:\n{}", grid);
                assert_eq!(format!("{}", grid), td.states[0]);

                for i in 1..td.states.len() {
                    grid.update();
                    println!("\ns{}:\n{}", i, grid);
                    assert_eq!(format!("{}", grid), td.states[i]);
                }
            }
        }

        #[test]
        fn test_calculate_biodiversity_rating() {
            for td in TEST_DATA {
                let grid = td.states[0].parse::<BugScannerGrid>().unwrap();
                assert_eq!(grid.calculate_biodiversity_rating(), td.biodiversity_rating)
            }
        }
    }
}
