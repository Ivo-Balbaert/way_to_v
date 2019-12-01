import math

fn defer_example() {
    mut a := f64(3)
    mut b := f64(4)
    
    // anything within this block won't run until the code after it has completed
    defer {
        c := math.sqrt(a+b)
        println('The hypotenuse of the triangle is $c')
    }
    
    // this should be executed before the statements above
    a = math.pow(a, 2)
    b = math.pow(b, 2)
    print('square of the length of side A is $a')
    println(', square of the length of side B is $b')
}

defer_example()

/* Output:
square of the length of side A is 9.000000, square of the length of side B is 16.000000
The hypotenuse of the triangle is 5.000000
*/