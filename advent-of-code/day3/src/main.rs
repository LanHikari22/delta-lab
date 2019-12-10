mod wire_circuit;
mod common;

fn main() {
        const INPUT_PATH: &str = "wire_paths";

        let paths = wire_circuit::read_wire_paths(INPUT_PATH).unwrap();
        let intersections = wire_circuit::find_intersections(&paths[0], &paths[1]);
        let dist = wire_circuit::find_distance_of_closest_intersection(&intersections).unwrap();
        let intersection_and_steps = wire_circuit::find_intersection_with_shortest_steps(&paths[0], &paths[1]);

        println!("dist: {:?}", dist);
        println!("intersection_and_steps: {:?}", intersection_and_steps);
}
