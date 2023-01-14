module main

struct Point{
	x int
	y int
}

fn main() {

	p := &Point{10, 10}
	println("x ${p.x}")
	println("y ${p.y}")

}
