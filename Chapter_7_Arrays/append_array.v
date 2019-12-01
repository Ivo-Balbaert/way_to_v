fn main() {
        mut cities := ['Berlin', 'Tokio']
        println(cities) // => ["Berlin", "Tokio"]

        cities << 'Paris'
        cities << 'London'
        println(cities)
        println(cities.len)
        
        // cities << 42 // expected type `string`, but got `int`

        // 2nd example:
        mut s := []string
	s << 'V is '
	s << 'awesome'
	println(s) // => ["V is ", "awesome"]

        mut nums := [0]
        nums << [1, 2, 3]
        println(nums) // => [0, 1, 2, 3]
        n:= 4
        nums << [0].repeat(n)
        println(nums) // => [0, 1, 2, 3, 0, 0, 0, 0]

        mut a := [1, 2, 3, 4]
        a << 5 << 6 << 7 << 8
        println(a) // => [1, 2, 3, 4, 10485760]
}