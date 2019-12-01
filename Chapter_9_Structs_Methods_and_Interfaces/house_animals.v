interface Speaker {
  speak() string
}

struct Dog { }
struct Cat { }

fn (d Dog) speak() string {
	return 'woof'
}

fn (c Cat) speak() string {
	return 'meow'
}

fn perform(s Speaker) string {
	return s.speak()
}

dog := Dog{}
cat := Cat{}
println(perform(dog)) // -> "woof"
println(perform(cat)) // -> "meow"   
