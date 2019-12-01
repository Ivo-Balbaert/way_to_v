fn main() {
	num1 := 99

	match num1 {
		98, 99 	{ println('It\'s equal to 98 or 99') } // => It's equal to 98 or 99
		100     {	println('It\'s equal to 100') }
	  else    { println('It\'s not equal to 98, 99 or 100') }
	}
}
