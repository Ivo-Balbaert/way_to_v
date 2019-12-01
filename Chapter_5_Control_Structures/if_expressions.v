fn main() {
	num := 777
	s := if num % 2 == 0 {
        'even'
    }
    else {
        'odd'
    }
  println(s) // => "odd"

  // multiple lines in each branch 
	s2 := if num % 2 == 0 {
    println('1st branch')
		'even'
	}
	else {
    println('2nd branch') // => 2nd branch
		'odd'
	}
	println(s2)  // => "odd"
}