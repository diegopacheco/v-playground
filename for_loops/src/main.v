module main

fn main() {
	
	numbers := [1, 2, 3, 4, 5]
	for num in numbers {
		println(num)
	}

	names := ['John', 'Mary']
	for i, name in names {
		println('${i}) ${name}')
	}

}
