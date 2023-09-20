module main

import picoev
import picohttpparser

fn main() {
	println("Pico.v running on http://127.0.0.1:8080/")
	mut server := picoev.new(picoev.Config{
		cb: handle_request
	})
	server.serve()
}

fn handle_request(userdata voidptr, req picohttpparser.Request, mut res picohttpparser.Response) {
	res.http_ok()
	res.html()
	res.body('Hello Picoev!')
	res.end()
}
