fn main() {
    first := 10
    cond  := 5

	  if first <= 0 {
		    println('first is less than or equal to 0')
	  } else if first > 0 && first < cond {
		    println('first is between 0 and 5')
	  } else {
		    println('first is 5 or greater') //  => first is 5 or greater
	  }
}
