module main

fn main() {
  result := sum(1,2,3,4,5,6)
  println('sum is ${result} ')
}

fn sum(a ...int) int {
	mut total := 0
	for x in a {
		total += x
	}
	return total
}

