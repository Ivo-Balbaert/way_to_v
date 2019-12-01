fn main() {
	// 1 - use 2 nested for loops
	for i := 1; i <= 25; i++ {
		for j := 1; j <= i; j++ {
			print('G')
		}
		println('')
	}
	// 2 -  use only one for loop and string concatenation
	mut str := 'G'
	for n := 1; n <= 25; n++ {
		println(str)
		str += 'G'
	}	
}

/*
G
GG
GGG
GGGG
GGGGG
GGGGGG
GGGGGGG
GGGGGGGG
GGGGGGGGG
GGGGGGGGGG
GGGGGGGGGGG
GGGGGGGGGGGG
GGGGGGGGGGGGG
GGGGGGGGGGGGGG
GGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGGGGGGG
G
GG
GGG
GGGG
GGGGG
GGGGGG
GGGGGGG
GGGGGGGG
GGGGGGGGG
GGGGGGGGGG
GGGGGGGGGGG
GGGGGGGGGGGG
GGGGGGGGGGGGG
GGGGGGGGGGGGGG
GGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGGGGGG
GGGGGGGGGGGGGGGGGGGGGGGGG
*/