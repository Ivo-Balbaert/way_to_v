fn main() {
	os := 'windows'
	match os {
		'windows' { println('Running on Windows') } // => Running on Windows
		'darwin'  { println('Running on macOS') } 
	  'linux'   { println('Running on Linux') }
	  else      { println('Running on a different OS: $os') }
	}

	c := `c` 
  mut x := ''
  match c {
        `a` {
            println('${c.str()} is for Apple')
            x += 'Apple'
        }
        `b`  {
            println('${c.str()} is for Banana')
            x += 'Banana'
        }
        `c`  {
            println('${c.str()} is for Cherry') // => c is for Cherry
            x += 'Cherry'   
        }
        else  {
            println('NOPE')
        }
	}
  println(x) // => Cherry
}
