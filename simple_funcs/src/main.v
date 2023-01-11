module main

fn main() {
	a := 10
	b := 20
	r1,r2,r3 := sum(a,b)
	println('sum a ${r1} + b ${r2} == c ${r3} ')
}

fn sum(a int,b int) (int,int, int) {
	return a, b, a+b
}
