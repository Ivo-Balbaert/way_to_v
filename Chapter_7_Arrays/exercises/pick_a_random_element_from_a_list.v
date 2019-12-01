// Idiom #11 Pick a random element from a list
// List x must be non-empty.

import (
  rand  
  time  
)

fn main() {
  nums := [1, 2, 3, 4, 5]

  t := time.now()
  s := t.calc_unix()
  rand.seed(s)

  println(rand_pick(nums))
}

fn rand_pick(x []int) int {
	return x[rand.next(x.len)]
}

// Output e.g.: 4