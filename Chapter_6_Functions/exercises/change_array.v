fn modify(data mut []string) {
	data[0] = 'hello'
}

mut a := ['A', 'B', 'C', 'D', 'E']
modify(mut a)
println(a) // => ["hello", "B", "C", "D", "E"]