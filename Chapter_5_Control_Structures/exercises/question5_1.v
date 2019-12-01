fn main() {
	k := 6
	match k {
		4 { println('was <= 4') }
		5 { println('was <= 5') }
		6 { println('was <= 6') } // => was <= 6
		7 { println('was <= 7') }
		8 { println('was <= 8') }
		else { println('default case') }
	}
}
