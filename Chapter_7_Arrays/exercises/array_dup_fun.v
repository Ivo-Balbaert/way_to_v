fn get_no_dup(arr mut []int) int {
	mut dup := 0
	arr.sort() 
	for i := 0; i < arr.len; i++ {
		if i + 1 == arr.len { break }             // to avoid index out of range
		if arr[i + 1] == arr[i] { dup++ }
	}
	return dup
}

fn main() {
	mut arr1 := [12, 2, -3, 42, 2, 42, 108, 42]  // no of duplicates: 3
  println('The number of duplicates is: ${get_no_dup(mut arr1)}') // => The number of duplicates is: 3
}