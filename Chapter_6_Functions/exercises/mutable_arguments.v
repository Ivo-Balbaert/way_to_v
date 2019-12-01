/: does not compile:
// Jul 17: error: invalid operands to binary * (have 'int *' and 'int')
fn main() {
  mut a := 10
  change_a(mut a) 
  println(a)
}

fn change_a(n mut int) {
  n = n * 2
}