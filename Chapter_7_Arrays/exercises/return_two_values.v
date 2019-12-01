// Idiom #20 Return two values
// Implement a function search which looks for item x in a 2D matrix m.
// Return indices i, j of the matching cell.
// Think of the most idiomatic way in the language to return the two values at the same time.

fn search(m [][]int, s int) (bool, int, int) {
	for ix, _ in m {
		for jx, val in m[ix] {
			if val == s {
				return true, ix, jx
			}
		}
	}
	return false, 0, 0
}

mult := [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]
to_search := 4
a, b, c := search(mult, to_search)
if a {
  print('The number $to_search was found on index $b $c')
}
else {
  print('The number $to_search was not found in the array')
}

// Output e.g.: The number 5 was found on index 1 1
// The number 6 was found on index 1 2
// The number 9 was found on index 2 2
// The number 4 was found on index 1 0
// The number 11 was not found in the array