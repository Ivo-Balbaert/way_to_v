enum Feeling {
	happy
	sad
	nothing
}

fn (f Feeling) to_byte() byte {
	return match f {
		.happy { 0 }
		.sad { 1 }
		.nothing { 2 }
	}
}

fn encode_feeling(f Feeling) byte {
	b :=  f.to_byte()
	return b
}

fn main() {
	f1 := Feeling.sad
	println(int(f1.to_byte()))       // 1
	println(int(encode_feeling(f1))) // 1
}