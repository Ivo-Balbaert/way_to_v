const (
	lower_s  = 'lower s'
)

fn get_val() int {
  return 13
}

fn main() {
	person := 'Harris' 
	println('Hello, $person!')

  println('lower_s = $lower_s')

  pi := 3.141592
  is_sharp := true
	print('$pi') 
  println('pi is $pi')
  println('pi with 2 decimals is ${pi:.2f}')
  println('is_sharp is $is_sharp')
   
  a := 5
  b := 7
	println('The sum is ${a + b}')

  // Interpolated strings now allow function calls: 
  println('val = $get_val()')
}
/* Output:
Hello, Harris!
lower_s = lower s
3.141592pi is 3.141592
pi with 2 decimals is 3.14
is_sharp is 1
The sum is 12
val = 13
*/