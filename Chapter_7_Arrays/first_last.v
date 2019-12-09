fn main () {
    mut a := []int
    a << 4
    a << 6
    a << 7
	  println(a.first()) // 4
    b := a.last()
    println('$b ${a.len}') // 7 3
    a.delete(a.len-1)
    println('$b ${a.len}') // 7 2
}
