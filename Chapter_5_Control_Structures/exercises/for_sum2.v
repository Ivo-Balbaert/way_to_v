fn main() {
	mut sum := 0
	for i := 0; i <= 100; i++ {
		sum += i
		i++
	}
	println(sum)
}

// 2550
// Explanation: i is incremented twice!