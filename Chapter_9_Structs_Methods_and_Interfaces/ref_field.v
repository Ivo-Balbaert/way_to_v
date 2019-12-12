struct Item {
  s     string
	other &Item
}

fn main() {
  i_2 := &Item{s: 'Hello, '}
  i_1 := Item{s: 'World!', other: i_2}
  println(i_1.other.s + i_1.s) // Hello, World!
}
