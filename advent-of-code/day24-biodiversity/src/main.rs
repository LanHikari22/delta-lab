use std::fs;
use std::error::Error;

mod bug_simulator;

fn main() -> Result<(), Box<dyn Error>> {
    let mut grid: bug_simulator::BugScannerGrid = fs::read_to_string("initial_state")?.parse()?;
    println!("{}", grid);
    println!("biodiversity: {}", grid.calculate_biodiversity_rating());
    grid.update();
    println!("\n{}", grid);

    Ok(())
}
