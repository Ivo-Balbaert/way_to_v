fn main() {
	s := if true {
		1
	} else {
		'a'
	}
	println(s)
}
// 2:7: error: mismatched types `int` and `string`