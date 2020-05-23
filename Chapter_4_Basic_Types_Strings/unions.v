union Block {
  mut:
    x int
    str string
}

fn main() {
	mut q1 := Block{str: 'This'}
	q1.str = 'Rosa'
	mut q2 := Block{x: 40}
	q2.x = 42
  println(q1)      // => Rosa
  println('$q2')   // => 42
}