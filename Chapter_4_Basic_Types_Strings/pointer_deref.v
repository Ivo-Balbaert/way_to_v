fn test(i &int) {
		unsafe {
    	*i = 2
		}
    println('test')
}
fn main() {
    a := 10
	  test(&a)      // => test
		println(a)		// => 2
}