module main

import json

struct Person { 
  name string 
  age int 
}

fn main() {
	p := Person{'Gandolfy', 300}
	js := json.encode(p)
	println(js)
	p2 := json.decode(Person, js) or { Person{} }
	println('${p2.name} ${p2.age}')
}