module main

fn main() {
  mut i := 1
  add_one := fn [i]() int {
    return i + 1
  }
  result := add_one()
  println("result ${result}")

}
