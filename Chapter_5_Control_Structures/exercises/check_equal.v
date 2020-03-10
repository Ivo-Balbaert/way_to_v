// Write a V program to accept two integers and check whether they are equal or not.
import os

fn main() {
	print('Give the 1st number: ')
	number1 := os.get_line().trim_space().int()   	
	print('Give the 2nd number: ')
	number2 := os.get_line().trim_space().int()   	
	if number1 == number2 {
		println('Both numbers are equal')
	} else {
		println('The two numbers are not equal')
	}
}