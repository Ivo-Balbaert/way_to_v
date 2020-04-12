import time
import net.http

fn main() {
  resp := http.get('https://vlang.io/utc_now') or {
    println('failed to fetch data from the server')
    return
  }

  t := time.unix(resp.text.int())
  println(t.format())
}

/*
warning: c:\v\vlib\net\http\backend_windows.v:18:19: you are calling an unsafe function outside of an unsafe block
2020-03-17 09:58
*/