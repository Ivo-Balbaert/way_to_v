// Write a V program that creates an array of all even numbers from 1 to 50

fn is_even(num int) bool {
	return match num % 2 {
		0 {true}
		else {false}
	}
}
	
fn main() {
	// println(is_even(4))  // true
	// println(is_even(7))	 // false
	mut arr := []int
	for i := 0; i < 50; i++ {
		if is_even(i) {	arr << i }
	}
	println(arr) // => [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
}	
