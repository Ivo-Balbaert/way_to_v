struct Point {
        x int
        y int
}

fn (p Point) str() string {
	      return 'Point { x: $p.x, y: $p.y }'
}

fn main() {
        p := Point{x: 10, y: 20}
        println(p)
}
// Point { x: 10, y: 20 }
