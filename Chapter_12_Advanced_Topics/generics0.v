fn plus<T>(a, b T) T {
    return a + b
}

fn main() {
    println(plus(10,11)) // 21
		println(plus(1.0, 2.0)) // 3.000000
		println(plus('hello', ' world!')) // hello world!
}