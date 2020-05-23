interface Byter {
	to_byte() byte
}

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

fn encode_byter(byter Byter) byte {
	b :=  int(byter.to_byte())
	return b
}

fn main() {
	f1 := Feeling.sad
	println(int(f1.to_byte()))       // 1
	println(int(encode_byter(f1)))   // 1
}