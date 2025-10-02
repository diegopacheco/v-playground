module main

interface Shape { area() f64 }

struct Rect { w f64 h f64 }

struct Circle { r f64 }

fn (r Rect) area() f64 { return r.w * r.h }

fn (c Circle) area() f64 { return 3.14159 * c.r * c.r }

fn total_area(ss []Shape) f64 {
	mut s := 0.0
	for sh in ss { s += sh.area() }
	return s
}

fn main() {
	println(total_area([Shape(Rect{3,4}), Circle{2}]))
}