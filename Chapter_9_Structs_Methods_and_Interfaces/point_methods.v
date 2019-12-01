import math

struct Point {
    x int
    y int
}

fn test_out_of_order_calls() {
    point := Point{x : 2, y : 2}
    mut point1 := Point{}
    point1 = Point{x : 1, y : 1}    
    
    x_diff, y_diff, distance := point.dist(point1)
		println('The x distance is: $x_diff')
    println('The y distance is: $y_diff')
    println('The distance between the two points is ${distance:.2f}')
}

fn (p Point) dist(p2 Point) (f64, f64, f64)  {  
    mut x_diff := f64(p2.x - p.x)    
    mut y_diff := f64(p2.y - p.y)
    x_diff = math.pow(x_diff, 2)    
    y_diff = math.pow(y_diff, 2)   
    distance := math.sqrt(x_diff + y_diff)
    return x_diff, y_diff, distance
}

/* Output:
The x distance is: 1.000000
The y distance is: 1.000000
The distance between the two points is 1.41
*/

test_out_of_order_calls() 