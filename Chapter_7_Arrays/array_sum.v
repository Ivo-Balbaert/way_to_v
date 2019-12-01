fn sum(a []f32) f32 {
  mut sum := 0.0
  for v in a {   
		sum += v
	}
	return sum
}

arr := [7.0, 8.5, 9.1]
x := sum(arr)
println('The sum of the array is: $x') // The sum of the array is: 24.600000
