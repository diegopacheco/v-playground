module main

import picoev
import picohttpparser
import net.http

fn main() {
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