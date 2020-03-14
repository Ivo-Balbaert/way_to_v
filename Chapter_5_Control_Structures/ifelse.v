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

		tom_age := 20
		ashia_age := 38
		if tom_age < ashia_age {
			if tom_age < 18 {
				println("tom_age < 18 and younger than Ashia.")
			} else {
				println("tom_age >= 18 and younger than Ashia.")
			}
		} else if tom_age > ashia_age {
			println("$tom_age > $ashia_age")
		} else {
			println("$tom_age == $ashia_age")
		}
}

/*
first is 5 or greater
tom_age >= 18 and younger than Ashia.
*/
