struct Thing {
mut: 
	arr [5][10]int
}

fn main() {
	mut x := &Thing{}
	x.arr[0][0] = 6
	println(x.arr[0][0]) // => 6
}