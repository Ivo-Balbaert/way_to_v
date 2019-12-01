struct Point {
	x f64
	y f64 
}

struct Figure {
  corners []Point
}

const (
  origin = Point{x: 0 , y: 0}
) 

fn main() {
        println(origin) 
        p1 := Point{x:5, y:10}
        p2 := Point{
          x: 10 
          y: 20 
        } 
        println(p1.x) // => 5.000000
        println(p2.y) // => 20.000000

        ptr_point := &Point{x:10, y:10} 
        println(ptr_point.x) // => 10.000000
        ptr2_point := &p2
        println(ptr2_point.y) // => 20.000000

        p3 := Point{5, 10}
        println(p3)
}

/*
{
	x: 0.000000
	y: 0.000000
}
5.000000
20.000000
10.000000
20.000000

*/

// For 2nd struct:
/*
5
20.000000
10
20.000000
{
	x: 5.000000
	y: 10.000000
}
*/