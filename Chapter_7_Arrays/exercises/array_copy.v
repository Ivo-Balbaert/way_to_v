//  Write a V program to copy the elements of one array into another array
// doesn't work without main
// use clone()  method

fn main() {
	arr1 := [1, 2, 3, 4]
	mut arr2 := [0].repeat(arr1.len)
	println('arr2 before copy: $arr2')
	for i := 0; i < arr1.len; i++ {
		arr2[i] = arr1[i]
	}
	println('arr2 after copy: $arr2')
}

/*
arr2 before copy: [0, 0, 0, 0] 
arr2 after copy: [1, 2, 3, 4] 
*/