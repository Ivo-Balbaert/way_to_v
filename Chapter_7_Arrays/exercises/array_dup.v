// Write a V program to count a total number of duplicate elements in an array.

/* algorithm:
- dup_counter
- sort array
- loop over array: 
		compare next item with previous item: if equal  dup_counter++
- display dup_counter
*/


fn main() {
	mut arr1 := [12, 2, -3, 42, 2, 42, 108, 42]  // no of duplicates: 3
	mut dup := 0
	arr1.sort() //  sort arr in place
  // println(arr1) 
	for i := 0; i < arr1.len; i++ {
		if i + 1 == arr1.len { break }             // to avoid index out of range
		if arr1[i + 1] == arr1[i] { dup++ }
	}
	println('The number of duplicates is: $dup') // => The number of duplicates is: 3
}