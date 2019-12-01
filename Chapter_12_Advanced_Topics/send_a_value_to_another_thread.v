// Idiom #25 Send a value to another thread
// Share the string value "Alan" with an existing running process 
// which will then display "Hello, Alan"
import (
	time
)

fn send(s string) { 
  println(s)  // Alan
}

 str := 'Alan'
go send(str)
// Make sure the non-main coroutine had the chance to finish.
time.sleep(1)
