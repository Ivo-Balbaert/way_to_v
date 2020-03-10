// Write a V program to print the integers inside an array and also print their mean.
fn main() {
	arr := [12, 45, 78, 108]
	mut sum := 0
	for item in arr {
			sum += item
	}
	mean := f32(sum) / arr.len
	println('The mean is: $mean') // => 60.750000
	// if f32 is left out, result is 60
}