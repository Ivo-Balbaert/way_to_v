struct Point {
	x i8 
	y i8
  z i8
}

fn (p Point) draw() string {
	return 'Point(${p.x},${p.y})'
}

fn to_string(d Drawer) string {
	return d.draw()

}

interface Drawer { 
  draw() string 
}

p := Point{x: 2, y: 3}
println(to_string(p)) // Point(2,3)
