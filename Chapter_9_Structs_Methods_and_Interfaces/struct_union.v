union Block {
  mut:
    x int
    str string
}

struct Sexpr {
  car Block
  cdr Block 
}

fn main() {
	mut q1 := Block{str: 'This'}
	q1.str = 'Rosa'
	mut q2 := Block{x: 40}
	q2.x = 42
	q := Sexpr{car: q1, cdr: q2}
  println(q.car.str)    // => Rosa
  println('$q.cdr.x')   // => 42
}