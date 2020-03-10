// Write a V program to read n number of values in an array and display it in reverse order:  
import os

fn main() {
		print('Give in the length of the array: ')
    arr_len := os.get_line().trim_space().int()
		mut arr := []int
		for i := 0; i < arr_len; i++ {
			print('Give an integer number: ')
			num := os.get_line().trim_space().int()
			arr << num
		}
    println(arr.reverse())
}
