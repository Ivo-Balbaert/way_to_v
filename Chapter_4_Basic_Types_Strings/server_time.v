import time
import http

fn main() {
	resp := http.get('https://vlang.io/utc_now') or {
		eprintln('failed to fetch data from the server')
		return
	}
	t := time.unix(resp.text.int())
	println(t.format()) // 2019-12-13 10:11
}