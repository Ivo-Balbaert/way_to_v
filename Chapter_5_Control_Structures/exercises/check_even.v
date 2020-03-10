// Write a V program to check whether a given number is even or odd.
import os

fn main() {
	print('Give the number: ')
	number := os.get_line().trim_space().int()   	
	if number % 2 == 0 {
		println('The number is even')
	} else {
		println('The number is odd')
	}
}