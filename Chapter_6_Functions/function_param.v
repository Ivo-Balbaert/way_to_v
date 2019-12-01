fn call(fun fn (int) string) {
	println(fun(25))
}

fn say(n int) string {
	return 'I said it!'
}

call(say)


// I said it!