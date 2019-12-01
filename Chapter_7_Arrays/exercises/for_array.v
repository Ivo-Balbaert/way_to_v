const (
        len = 15
)

fn main() {
	mut arr := [0].repeat(len)
	for i:=0; i < len; i++ {
		arr[i] = i
	}
	println(arr)   // => [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14]
}