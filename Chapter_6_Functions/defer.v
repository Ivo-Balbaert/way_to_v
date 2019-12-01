fn fun1() {
	println("In fun1 at the top")
	defer { fun2() }
	println("In fun1 at the bottom!")
}

fn fun2() {
	println("fun2: Deferred until the end of the calling function fun1!")
}

fun1()

/* Output:
In fun1 at the top
In fun1 at the bottom!
fun2: Deferred until the end of the calling function fun1!
*/