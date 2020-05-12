fn main() {
    names := ['Abby', 'Bob', 'Carl']

    for i := names.len-1; i >= 0; i-- {
        println(names[i])
    }

    mut j := names.len-1
    for j >= 0 {
         println(names[j])
         j--
    }

		for name in names.reverse() {
      println(name)
	}
}

/* 3 times:
Carl
Bob
Abby
*/