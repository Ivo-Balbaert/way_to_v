struct Vec {
    x int
    y int
}

fn (a Vec) str() string { 
    return '{$a.x, $a.y}' 
}

fn (a Vec) + (b Vec) Vec {
    return Vec {
        a.x + b.x , 
        a.y + b.y 
    }
}

fn (a Vec) - (b Vec) Vec {
    return Vec {
        a.x - b.x, 
        a.y - b.y
    }
}

fn main() { 
    a := Vec{2, 3}
    b := Vec{4, 5}
    println(a + b) // ==> "{6, 8}" 
    println(a - b) // ==> "{-2, -2}" 
}

/* Output:
{6, 8}
{-2, -2}
*/