fn main() {
	mut m := map[string]int 
  m['one'] = 1
  m['two'] = 2

  for key, val in m {
    println('$key => $val')
  }
  /*
  one => 1
  two => 2
  */
  // only keys:
	for key, _ in m {
    println('$key')
  }
  /*
  one
  two
  */
  // or same output for:
  for key in m.keys() {
    println('$key')
  }
  // only values:
  for _, val in m {
    println('$val')
  }
  /*
  1
  2
  */
}