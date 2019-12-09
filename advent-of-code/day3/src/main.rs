mod wire_circuit;
mod common;


const INPUT_PATH: &str = "wire_paths";

fn get_one() -> i32 {
    loop {
        break 1;
    }
}

fn main() {
        const INPUT_PATH: &str = "wire_paths";

        let paths = wire_circuit::read_wire_paths(INPUT_PATH).unwrap();
        let intersections = wire_circuit::find_intersections(&paths[0], &paths[1]);
        let dist = wire_circuit::find_distance_of_closest_intersection(&intersections).unwrap();

        println!("{:?}", dist);
}
