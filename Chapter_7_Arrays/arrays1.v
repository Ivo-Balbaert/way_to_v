const (
    numbers = [1, 2, 3] 
)

fn main() {
	println(numbers) // => [1, 2, 3] 

	nums := [1, 2, 3, 4, 5]
	println(nums[0]) // => 1
	println(nums[1]) // => 2
  println(nums[4]) // => 5
  
	println(nums)    // => [1, 2, 3, 4, 5]
	println(nums.len) // => 5

  // println(nums[5]) // => V panic: index out of range (i == 5, a.len == 5)

	arr := []int
	println(arr.len) // => 0
	println(arr)     // => []

	// array with different types:
 	// nums2 := [1, 2, 'abc'] // => arrays1.v:23:24: bad array element type `string` instead of `int`
}