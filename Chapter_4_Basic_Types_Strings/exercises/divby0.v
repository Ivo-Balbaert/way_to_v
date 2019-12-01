fn main() {
	a := 10
	b := 0
	c := a / b  // Floating point exception(core dumped) ./main
	println(c)
}