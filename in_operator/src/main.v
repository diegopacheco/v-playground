module main

fn main() {
	numbers := [1,2,3,4,5,6,7,8,9,10]
	println("Numbers ${numbers}")

	hash := {
		1: 'Brazil',
		2: 'US'
		3: 'Europe',
		4: 'Asia',
		5: 'Colombia',
		6: 'UK',
		7: 'London',
		8: 'Italy',
		9: 'India',
		10: 'Japan',
	}
	println("Hash ${hash}")
	println("1 im? ${1 in hash}")

	europe_present := 3 in hash
	println("is Europe in Hash ? ${europe_present}")

}
