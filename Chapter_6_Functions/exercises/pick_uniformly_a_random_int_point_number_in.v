// Idiom #15 Pick uniformly a random integer in [a..b]
// Pick a random integer greater than or equals to a, inferior or equals to b. Precondition : a < b.

import (
  rand  
  time  
)

fn main() {
  t := time.now()
  s := t.calc_unix()
  rand.seed(s)

  println(rand_picki(314, 516))
}

fn rand_picki(a, b int) int {
	return a + (rand.next(b - a + 1))
}

// Output e.g.: 491 