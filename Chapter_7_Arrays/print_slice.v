fn main() {
	x := [byte(65), 66, 67]
	b := x[0..1]
	println(b)		// [A] 
	println(b.str())	// [A] 
	println('$b')		// [A] 

	y := ['apple', 'banana', 'coconut']
	slice_of_y := y[0..1]
	println(slice_of_y) 		// ['apple'] 
	println(slice_of_y.str())	// ['apple'] 
	println('$slice_of_y')  	// ['apple'] 
}