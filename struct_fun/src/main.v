module main

struct Point {
	x int
	y int
}

fn main() {

	mut p := Point{
		x: 10
		y: 20
	}
	println('Point ${p}')

	p2 := Point{20, 20}
	// assert p2.x == p.y // will panic
	assert p2.y == p.y

}
