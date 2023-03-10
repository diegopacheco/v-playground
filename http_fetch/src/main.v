module main

import time
import net.http

fn main() {
	resp := http.get('https://vlang.io/utc_now') or {
		println('failed to fetch data from the server')
		return
	}
	t := time.unix(resp.body.int())
	println(t.format())
}
