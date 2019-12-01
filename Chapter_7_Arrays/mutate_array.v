fn multiply_by_2(arr mut []int) {
	for i := 0; i < arr.len; i++ {
		arr[i] *= 2
	}
}

mut nums := [1, 2, 3]
multiply_by_2(mut nums)
println(nums) // => [2, 4, 6]