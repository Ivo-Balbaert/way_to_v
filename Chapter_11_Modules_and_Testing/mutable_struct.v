struct Point {
    x int
mut:
    y int
}

fn main() {  
    mut point := Point{x:10, y:20}
    // point.x++ // won't compile: cannot modify immutable field `x` (type `Point`)
    point.y++ // OK
    println(point)
}

/*
{
	x: 10
	y: 21
}
*/