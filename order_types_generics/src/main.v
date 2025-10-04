module main

fn max[T](a T, b T) T {
	if a > b { return a }
	return b
}

fn main() {
	println(max(3, 7))
	println(max('ab', 'aa'))
}
