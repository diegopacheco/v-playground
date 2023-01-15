module calc

pub fn sum(v1 int, v2 int) int {
	return v1 + v2
}

pub fn sub(v1 int,v2 int) int {
	return v1 - v2
}

pub fn mul(v1 int,v2 int) int {
	return v1 * v2
}

pub fn div(v1 int,v2 int) int {
	return v1 / v2
}

fn will_not_be_exported() int {
	return 42
}