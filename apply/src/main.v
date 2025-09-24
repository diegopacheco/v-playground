module main

fn apply[T](xs []T, f fn (T) T, g fn (T) bool) []T {
	mut out := []T{}
	for v in xs {
		u := f(v)
		if g(u) { out << u }
	}
	return out
}

fn main() {
	xs := [1,2,3,4,5,6,7,8,9,10]
	ys := apply[int](
              xs, 
              fn (x int) int { return x*x }, 
              fn (x int) bool { return x%2==0 && x>20 }
  )
	println(ys)
}