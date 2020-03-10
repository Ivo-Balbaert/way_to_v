// Write a V program to check whether a given number is positive or negative.
import os

fn main() {
	print('Give the number: ')
	number := os.get_line().trim_space().int()   	
	if number >= 0 {
		println('The number is 0 or positive')
	} else {
		println('The number is negative')
	}
}