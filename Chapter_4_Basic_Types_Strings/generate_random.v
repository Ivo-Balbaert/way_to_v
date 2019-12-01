import (
  rand
  time
)

fn main() {
  t := time.now()
  s := t.calc_unix() 
  rand.seed(s)
// generate a random number from 1 to 100
  j := rand.next(100)
  println(j)  // e.g. 23
}