fn main() {
	arr := [1,2,3,4] 
	println(arr[1..2]) // => [2]
	println(arr[0..4]) // => [1, 2, 3, 4]

	println(arr[1..arr.len]) // => [2, 3, 4]

	println(arr[..2]) // => [1, 2]

	str := 'hello' 
	println(str[0..2]) // => he 
}
