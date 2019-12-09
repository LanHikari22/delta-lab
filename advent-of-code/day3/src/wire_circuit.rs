use crate::common;
use std::vec::Vec;

// this module analyzes paths of wires in a grid and detects intersections between them

#[derive(Debug, PartialEq, Clone, Copy)]
pub struct Point {
    x: i32,
    y: i32,
}


#[derive(Debug, PartialEq)]
pub struct HorizontalSegment {
    origin: Point,
    delta: i32,
}


#[derive(Debug, PartialEq)]
pub struct VerticalSegment {
    origin: Point,
    delta: i32,
}


#[derive(Debug, PartialEq)]
pub enum PathSegment {
    Horizontal(HorizontalSegment),
    Vertical(VerticalSegment),
}


#[derive(Debug, PartialEq)]
pub enum WirePathReadingError {
    InvalidDirection, // directions must be specified with U R D L
    InvalidDirectionAmount,
}


pub fn read_wire_paths(path_directions_file: &str) -> Result<Vec<Vec<PathSegment>>, WirePathReadingError> {
    // file reading
    use std::path::Path;
    use std::error::Error;
    use std::fs::File;
    use std::io::prelude::*; // seems needed to include the Read trait for std::fs::File

    // for reading from lines
    use std::io::BufReader;

    let filepath = Path::new(path_directions_file);
    let file = File::open(&filepath).unwrap_or_else(|why| { 
        panic!("could not open {}", why.description())
    });
    let file = BufReader::new(file);
   
    let mut paths: Vec<Vec<PathSegment>> = Vec::new();
    for (i, line) in file.lines().enumerate() {
        let line = line.unwrap();
        // println!("\n{} {}", i, line);
        paths.push(read_wire_path(&line)?);
    }

    Ok(paths)
}

// reads a path description string consisting of comma separated
// directons: U<n>, R<n>, D<n>, and L<n> for Up, Down, Left, and Right respectively.
// <n> specifies how many steps to take in the direction. 
// Once read, segments are computed and traced to calculate coordinates.
pub fn read_wire_path(path_directions: &str) -> Result<Vec<PathSegment>, WirePathReadingError> {

    let mut location = Point {x: 0, y: 0};
    let mut segments: Vec<PathSegment> = Vec::new();

    for direction in path_directions.split(',') {
        let mut chars = direction.chars().collect::<Vec<char>>();

        let direction = chars[0];
        let amount = chars[1..].iter()
            .collect::<String>()
            .parse::<i32>();
        if amount.is_err() {
            return Err(WirePathReadingError::InvalidDirectionAmount);
        }
        let amount = amount.unwrap();

        if !common::char_in(chars[0], &['R', 'D', 'L', 'U']) {
            return Err(WirePathReadingError::InvalidDirection);
        }

        match direction {
            'R' => {
                segments.push(PathSegment::Horizontal(HorizontalSegment {origin: location, delta: amount}));
                location.x += amount;
            },
            'D' => {
                segments.push(PathSegment::Vertical(VerticalSegment {origin: location, delta: -amount}));
                location.y -= amount;
            },
            'L' => {
                segments.push(PathSegment::Horizontal(HorizontalSegment {origin: location, delta: -amount}));
                location.x -= amount;
            },
            'U' => {
                segments.push(PathSegment::Vertical(VerticalSegment {origin: location, delta: amount}));
                location.y += amount;
            },
            _ => panic!("invalid direction"),
        }

    }
    Ok(segments)
}


pub fn find_intersections(path1: &[PathSegment], path2: &[PathSegment]) -> Vec<Point> {
    let mut intersections: Vec<Point> = Vec::new();

    // for each segment, iterate opposite segments in other path and find intersections
    for seg1 in path1.iter() {
        match seg1 {
            PathSegment::Horizontal(h_seg) => {
                for v_seg in path2.iter() {
                    if let PathSegment::Vertical(v_seg) = v_seg {
                        if let Ok(intersection) = calc_segment_collision(&h_seg, &v_seg) {
                            intersections.push(intersection);
                        }
                    }
                }
            },
            PathSegment::Vertical(v_seg) => {
                for h_seg in path2.iter() {
                    if let PathSegment::Horizontal(h_seg) = h_seg {
                        if let Ok(intersection) = calc_segment_collision(&h_seg, &v_seg) {
                            intersections.push(intersection);
                        }
                    }
                }
            },
        }
    }

    intersections
}


// this calculates whether two segments (vertical or horizontal) intersect.
// Method:
//  Given two line segments
//  x = x0 + dx*u, y = A
//  and
//  x = B, y = y0 + dy*v
//  equating the two results in the equations
//  x0 + dx*u = B
//  y0 + dy*v = A
//  Solving for u, v if they lie within their expected segment range of [0,1], then (B,A) is returned.
pub fn calc_segment_collision(hori_seg: &HorizontalSegment, vert_seg: &VerticalSegment) -> Result<Point, ()> {
    let x0 = hori_seg.origin.x as f32;
    let A = hori_seg.origin.y as f32;
    let dx = hori_seg.delta as f32;
    let B = vert_seg.origin.x as f32;
    let y0 = vert_seg.origin.y as f32;
    let dy = vert_seg.delta as f32;

    // calculate intersection
    let u = (B - x0) / dx;
    let v = (A - y0) / dy; 
    // println!("u: {}, v: {}", u, v);

    // ensure results are in the segments [0.0, 1.1] for u and v
    let in_bounds = |x: f32| x >= 0f32 && x <= 1f32;
    if !in_bounds(u) || !in_bounds(v) {
        return Err(());
    }

    // println!("intersection: ({}, {})", B, A);
    
    Ok(Point {x: B as i32, y: A as i32})
}


pub fn find_distance_of_closest_intersection(intersections: &[Point]) -> Option<i32> {
    if intersections.len() == 0 {
        return None;
    }
    let mut v = intersections.iter()
        .map(|p| calc_manhattan_distance(p))
        .collect::<Vec<i32>>();
    v.sort();

    if v[0] == 0 && v.len() > 1 {
        // intersection at origin is closest, but this is not a useful answer
        Some(v[1])
    } else {
        Some(v[0])
    }

}


pub fn calc_manhattan_distance(p: &Point) -> i32 {
    p.x.abs() + p.y.abs()
}





#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn main() {
        const INPUT_PATH: &str = "wire_paths";

        let paths = read_wire_paths(INPUT_PATH).unwrap();
        assert_eq!(paths.len(), 2);

        let intersections = find_intersections(&paths[0], &paths[1]);
        let dist = find_distance_of_closest_intersection(&intersections);

        println!("{:?}", intersections);

        // panic!();
    }

    #[test]
    fn test_provided() {
        fn dotest(path1: &str, path2: &str, expected: i32) {
            let path1_segs = read_wire_path(path1).unwrap();
            let path2_segs = read_wire_path(path2).unwrap();
            // println!("{:?} {:?}", path1_segs, path2_segs);
            let intersections = find_intersections(&path1_segs, &path2_segs);
            println!("inter {:?}", intersections);
            assert_eq!(find_distance_of_closest_intersection(&intersections).unwrap(), expected);
            println!("{}", find_distance_of_closest_intersection(&intersections).unwrap());
        }

        dotest("R75,D30,R83,U83,L12,D49,R71,U7,L72", "U62,R66,U55,R34,D71,R55,D58,R83", 159);
        dotest("R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51", "U98,R91,D20,R16,D67,R40,U7,R15,U6,R7", 135);
    }

    #[test]
    fn test_calc_manhattan_distance() {

    }

    #[test]
    fn test_calc_segment_collision() {
        let v_seg = VerticalSegment {origin: Point {x: 0, y: 0}, delta: 10};
        let h_seg = HorizontalSegment {origin: Point {x: 1, y: 0}, delta: 10};

        calc_segment_collision(&h_seg, &v_seg);
        // panic!();
    }
}
