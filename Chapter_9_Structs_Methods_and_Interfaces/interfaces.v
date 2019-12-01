interface Shaper {
        area() f64
//        perimeter() f64
}

struct Square {
mut:
	side f64
}

fn (sq Square) area() f64 {
	return sq.side * sq.side
}

fn calc_area(sh Shaper) f64 {
        return sh.area()
}

fn main() {
        mut sq1 := Square{}
        sq1.side = 5
        println('The square has area: ${calc_area(sq1)}')
}
// The square has area: 25.000000
