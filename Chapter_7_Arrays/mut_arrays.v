fn main() {
	mut nums := [1, 2, 3, 4, 5]
  println(nums)    // => [1, 2, 3, 4, 5]
  nums[2] = 7
  println(nums)    // [1, 2, 7, 4, 5]

  // changing an item to a different type:
  // nums[2] = 'V'  // cannot use type `string` as type `int` in assignment

  // insert:
  // mut names := ['Samuel', 'John', 'Peter']
  // names.insert(2, 'Tom') // Nov 16: error in Windows
  // println(names)

  // delete:
  mut even_numbers := [2, 4, 6, 8, 10]
  even_numbers.delete(3) 
  println(even_numbers) // => [2, 4, 6, 10]

}