// imperative solution:
const (
    MAX = 10
)

fn main() {
	mut facs := [0].repeat(MAX+1)
	facs[0] = 1
  println('The 0-th Factorial number is: 1')
	
	for i:= 1; i <= MAX; i++ {
		facs[i] = i * facs[i-1]
		println('The $i-th Factorial number is: ${facs[i]}')
	}
}

// Output:
/*
The 0-th Factorial number is: 1
The 1-th Factorial number is: 1
The 2-th Factorial number is: 2
The 3-th Factorial number is: 6
The 4-th Factorial number is: 24
The 5-th Factorial number is: 120
The 6-th Factorial number is: 720
The 7-th Factorial number is: 5040
The 8-th Factorial number is: 40320
The 9-th Factorial number is: 362880
The 10-th Factorial number is: 3628800
*/