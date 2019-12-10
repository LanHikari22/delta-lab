use crate::common;
use std::vec::Vec;

// this module analyzes paths of wires in a grid and detects intersections between them

#[derive(Debug, PartialEq, Clone, Copy)]
pub struct Point {
    x: i32,
    y: i32,
}


#[derive(Debug, PartialEq, Clone, Copy)]
pub struct HorizontalSegment {
    origin: Point,
    delta: i32,
}


#[derive(Debug, PartialEq, Clone, Copy)]
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
    for line in file.lines() {
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
        let chars = direction.chars().collect::<Vec<char>>();

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


pub fn find_intersection_segments(path1: &[PathSegment], path2: &[PathSegment]) -> Vec<(HorizontalSegment, VerticalSegment)> {
    let mut intersections: Vec<(HorizontalSegment, VerticalSegment)> = Vec::new();

    // for each segment, iterate opposite segments in other path and find intersections
    for seg1 in path1.iter() {
        match seg1 {
            PathSegment::Horizontal(h_seg) => {
                for v_seg in path2.iter() {
                    if let PathSegment::Vertical(v_seg) = v_seg {
                        if let Ok(_intersection) = calc_segment_collision(h_seg, v_seg) {
                            intersections.push((h_seg.clone(), v_seg.clone()));
                        }
                    }
                }
            },
            PathSegment::Vertical(v_seg) => {
                for h_seg in path2.iter() {
                    if let PathSegment::Horizontal(h_seg) = h_seg {
                        if let Ok(_intersection) = calc_segment_collision(&h_seg, &v_seg) {
                            intersections.push((h_seg.clone(), v_seg.clone()));
                        }
                    }
                }
            },
        }
    }

    intersections
}


pub fn find_intersections(path1: &[PathSegment], path2: &[PathSegment]) -> Vec<Point> {
    find_intersection_segments(path1, path2).iter()
        .map(|tup| calc_segment_collision(&tup.0, &tup.1).expect("only valid collision segments should be found"))
        .collect::<Vec<Point>>()
}


pub fn find_intersections_and_steps(path1: &[PathSegment], path2: &[PathSegment]) -> Vec<(Point, i32)> {
    let mut out: Vec<(Point, i32)> = Vec::new();

    // for each segment, iterate opposite segments in other path and find intersections
    for (i, seg1) in path1.iter().enumerate() {
        match seg1 {
            PathSegment::Horizontal(h_seg) => {
                for v_seg in path2.iter() {
                    if let PathSegment::Vertical(v_seg) = v_seg {
                        if let Ok(intersection) = calc_segment_collision(h_seg, v_seg) {
                            let steps_to_intersection = count_steps_to_intersection(&path1[..=i], &intersection);
                            out.push((intersection, steps_to_intersection));
                        }
                    }
                }
            },
            PathSegment::Vertical(v_seg) => {
                for h_seg in path2.iter() {
                    if let PathSegment::Horizontal(h_seg) = h_seg {
                        if let Ok(intersection) = calc_segment_collision(&h_seg, &v_seg) {
                            let steps_to_intersection = count_steps_to_intersection(&path1[..=i], &intersection);
                            out.push((intersection, steps_to_intersection));
                        }
                    }
                }
            },
        }
    }

    out
}

pub fn find_intersection_with_shortest_steps(path1: &[PathSegment], path2: &[PathSegment]) -> (Point, i32) {
    // each intersection step is calculated with respect to first path, but we need the sum
    // of both
    let mut path1_intersection_steps = find_intersections_and_steps(&path1, &path2)
                                    .into_iter()
                                    .filter(|&tup| tup.1 != 0) // origin point intersection is a trivial solution
                                    .collect::<Vec<(Point, i32)>>();
    let mut path2_intersection_steps = find_intersections_and_steps(&path2, &path1)
                                    .into_iter()
                                    .filter(|&tup| tup.1 != 0) // origin point intersection is a trivial solution
                                    .collect::<Vec<(Point, i32)>>();
    
    fn sort_by_manhatten_length(a: &(Point, i32), b: &(Point, i32)) -> std::cmp::Ordering { 
        (a.0.x.abs() + a.0.y.abs()).cmp(&(b.0.x.abs() + b.0.y.abs()))
    }


    path1_intersection_steps.sort_by(sort_by_manhatten_length);
    path2_intersection_steps.sort_by(sort_by_manhatten_length);

    assert_eq!(path1_intersection_steps.len(), path2_intersection_steps.len(), 
        "number of intersections must be equal, and so are the steps");

    // add the number of steps, but keep record of the intersection
    let mut combined_intersection_and_steps: Vec<(Point, i32)> = Vec::new();
    for i in 0..path1_intersection_steps.len() {
        combined_intersection_and_steps.push((path1_intersection_steps[i].0, path1_intersection_steps[i].1 + path2_intersection_steps[i].1));
    }

    // sort by steps tp get least amount
    combined_intersection_and_steps.sort_by(|a,b| a.1.cmp(&b.1));

    // println!("steps {:?}", path1_intersection_steps);
    // println!("steps {:?}", path2_intersection_steps);
    // println!("combo {:?}", combined_intersection_and_steps);


    combined_intersection_and_steps[0]
}


pub fn count_steps_to_intersection(subpath: &[PathSegment], intersection: &Point) -> i32 {
    let mut steps: i32 = 0;

    if subpath.len() == 0 {
        // intersection at origin... takes 0 number of steps.
        return 0;
    }

    // walk the path and count the number of steps taken
    for seg in subpath[..subpath.len()-1].iter() {
        match seg {
            PathSegment::Horizontal(h_seg) => steps += h_seg.delta.abs(),
            PathSegment::Vertical(v_seg) => steps += v_seg.delta.abs(),
        }
    }

    // only include the part of the last segment until the intersection
    match subpath[subpath.len() - 1] {
        PathSegment::Horizontal(h_seg) => {steps += (intersection.x - h_seg.origin.x).abs()},
        PathSegment::Vertical(v_seg) => {steps += (intersection.y - v_seg.origin.y).abs()},
    }

    steps
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

    // ensure results are in the segments [0.0, 1.1] for u and v
    let is_ratio = |x: f32| x >= 0f32 && x <= 1f32;
    if !is_ratio(u) || !is_ratio(v) {
        return Err(());
    }

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


    struct TestData {
        path1: &'static str,
        path2: &'static str,
        closest_intersection_distance: i32,
        total_steps_to_intersection: i32,
    }

    static TEST_DATA: &[TestData] = &[
        TestData {
            path1: "R8,U5,L5,D3",
            path2: "U7,R6,D4,L4",
            closest_intersection_distance: 6,
            total_steps_to_intersection: 30,
        },
        TestData {
            path1: "R75,D30,R83,U83,L12,D49,R71,U7,L72",
            path2: "U62,R66,U55,R34,D71,R55,D58,R83",
            closest_intersection_distance: 159,
            total_steps_to_intersection: 610,
        },
        TestData {
            path1: "R98,U47,R26,D63,R33,U87,L62,D20,R33,U53,R51", 
            path2: "U98,R91,D20,R16,D67,R40,U7,R15,U6,R7", 
            closest_intersection_distance: 135,
            total_steps_to_intersection: 410,
        },
    ];

    #[test]
    fn test_find_distance_of_closest_intersection() {
        fn run_test(path1: &str, path2: &str, expected: i32) {
            let path1_segs = read_wire_path(path1).unwrap();
            let path2_segs = read_wire_path(path2).unwrap();
            // println!("{:?} {:?}", path1_segs, path2_segs);
            let intersections = find_intersections(&path1_segs, &path2_segs);
            println!("inter {:?}", intersections);
            assert_eq!(find_distance_of_closest_intersection(&intersections).unwrap(), expected);
            println!("{}", find_distance_of_closest_intersection(&intersections).unwrap());
        }

        for td in TEST_DATA {
            run_test(td.path1, td.path2, td.closest_intersection_distance);
        }
    }


    #[test]
    fn test_find_intersection_with_shortest_steps() {
        fn run_test(path1: &str, path2: &str, expected: i32) {
            let path1_segs = read_wire_path(path1).unwrap();
            let path2_segs = read_wire_path(path2).unwrap();
            // println!("{:?} {:?}", path1_segs, path2_segs);
            let intersection_and_steps = find_intersection_with_shortest_steps(&path1_segs, &path2_segs);

            assert_eq!(intersection_and_steps.1, expected);
            
        }

        for td in TEST_DATA {
            run_test(td.path1, td.path2, td.total_steps_to_intersection);
        }
        // panic!();
        
    }

}
