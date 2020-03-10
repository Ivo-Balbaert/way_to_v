// Write a V program to get the largest element of an array using a function.

fn arr_max(arr []int) int {
	mut max := arr[0]
	for item in arr {
		if item > max { max = item }
	}
	return max
}

fn main() {
	arr := [0, -45, 78, 345, 12, 77]
	max := arr_max(arr) 
	println('The maximum is: $max') // => 345
	println('The maximum is: ${arr_max(arr)}') // => 345
}