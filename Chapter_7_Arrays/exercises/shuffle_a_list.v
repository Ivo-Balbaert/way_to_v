// Idiom #10 Shuffle a list
// Generate a random permutation of the elements of list x

import (
  rand  
  time  
)

fn main() {
  mut nums := [1, 2, 3, 4, 5]
  mut temp := 0

  t := time.now()
  s := t.calc_unix()
  rand.seed(s)

  for ix, _ in nums {
	      jx := rand.next(ix + 1)
        temp = nums[ix]
	      nums[ix] = nums[jx]
        nums[jx] = temp
  }
  println(nums)
}

// Output: e.g.
// [2, 1, 3, 5, 4]