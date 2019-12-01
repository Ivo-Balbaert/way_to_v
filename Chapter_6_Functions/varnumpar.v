fn min(a ...int) int {
  if a.len == 0 { return 0 }
  mut min := a[0]
  for v in a {
    if v < min { min = v }
  }
  return min
}

x := min(1, 3, -8, 2, 0) 
println('The minimum is: $x') // The minimum is: -8

/* doesn't work yet:
arr := [7, 9, -8, 3, 5, 1]
y := min(arr...) // expected type `[]int`, but got `int`
println('The minimum in the array arr is: $y')
*/