fn compare_values(a, b int) string {
	if a > b {
		return 'Bigger'
	}
	return 'Equal or Smaller'
}

println(compare_values(3, 10)) // => Equal or Smaller