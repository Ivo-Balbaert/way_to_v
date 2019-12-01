// pointer arithmetic
// does not compile
struct Point {
	x byte
}

fn main() {
	p1 := &Point{x: byte(0)}
	mut p2 := &Point{}
	println(p1)
	for i := 0; i < 50; i++ {
		p2 = p1 + i // error: operator + not defined on `Point*`
		if i == 5 {
			p2.x = byte(11)
		}
		println(p2.x)
	}
}
