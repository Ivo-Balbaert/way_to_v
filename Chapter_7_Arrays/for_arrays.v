fn main() {
	mut arr1 := [1, 2, 3, 4, 5]
	
	for i := 0; i < arr1.len; i++ {
		arr1[i] = i * 2
		println('Item at index $i is ${arr1[i]}')
	}
}

/*
Item at index 0 is 0
Item at index 1 is 2
Item at index 2 is 4
Item at index 3 is 6
Item at index 4 is 8
*/