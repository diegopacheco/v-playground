module main

enum Color{
	red
	blue
	green
}

fn color_to_text(c Color) string {
	return match c {
		.red {
			"RED"
		}
		.green {
			"GREEN"
		}
		.blue {
			"BLUE"
		}
	}
}

fn main() {
	result := color_to_text(Color.blue)
	println('What color is this? ${result}')
}
