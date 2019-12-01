struct Rect {
	height int
	width  int
}

fn (r Rect) area() int {
	return r.height * r.width
}

fn (r Rect) perimeter() int {
	return 2 * (r.height + r.width)
}

r1 := Rect{width: 4, height: 3}
println(r1)  
println('Rectangle area is: ${r1.area()}')
println('Rectangle perimeter is: ${r1.perimeter()}')

/* Output:
{
	height: 3
	width: 4
}
Rectangle area is:  12
Rectangle perimeter is:  14
*/