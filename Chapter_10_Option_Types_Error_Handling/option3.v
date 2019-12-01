struct DivisionResult {
    result f64
}

fn divide(a, b f64) ?DivisionResult {
    if (b != 0) {
        return DivisionResult {result : a/b }
    }
    return error('Can\'t divide by zero!')
}

fn error_handling_example() {
    x := f64(10.0)
    y := f64(0)
    z := f64(2.5)

	succeed := divide(x, z) or {
        println(err)
        return
    }
    println(succeed.result) // => 4.000000
    
    fail := divide(x, y) or {
        println(err) // => Can't divide by zero!
        return 
    }
    println(fail.result)
}

error_handling_example()