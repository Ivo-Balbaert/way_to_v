// Write a V program to find whether a given year is a leap year or not.
import os

fn main() {
	mut leap := false
	print('Give the year: ')
	year := os.get_line().trim_space().int()   	

	// algorithm:
	if year % 4 != 0 { leap = false }
	else if year % 100 != 0 { leap = true }
  else if year % 400 != 0 { leap = false }
	else { leap = true }

	if leap {
		println('The year is a leap year')
	} else {
		println("The year isn't a leap year")
	}
}