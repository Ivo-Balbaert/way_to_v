// Write a V program to convert decimal number to binary number using a function: 
/* Algorithm:
Conversion steps:
Divide the number by 2.
Get the integer quotient for the next iteration.
Get the remainder for the binary digit.
Repeat the steps until the quotient is equal to 0.
*/

fn convert_dec_bin(num int) int  {
	  mut tmp := num
	  mut arr_bin := []string
		for tmp != 0 {
			arr_bin << (tmp % 2).str()
			tmp = tmp / 2
		}
		//arr_bin = arr_bin.reverse()
		// println(arr_bin) // => ["1", "0", "0", "0"]
		return arr_bin.reverse().join('').int()
}

println(convert_dec_bin(8))  // => 1000
println(convert_dec_bin(13))  // => 1101