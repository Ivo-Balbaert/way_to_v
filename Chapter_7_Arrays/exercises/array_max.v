// Write a V program that, given an array of numbers, returns the maximum value.

fn main() {
	arr := [0, -45, 78, 345, 12, 77]
	mut max := arr[0]
	for item in arr {
		if item > max { max = item }
	}
	println('The maximum is: $max') // => 345
}