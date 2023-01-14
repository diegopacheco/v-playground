module main

fn main() {
	result :=  resolve("linux")
	println('OS ${result} ')
}

fn resolve(str string) string {
	return match str{
		'linux' {
			println("Yes. It's great")
			str
		}
		'macos' {
			println("Ok. It works")
			str
		}
		else{
			println("You said? ${str} ")
			str
		}
	}
}