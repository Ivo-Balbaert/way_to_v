const (
	A = 'G'
)

fn main() {
	n()
	m()
	n()
}

fn n() {
	print(A) 
}

fn m() {
		A := 'O'
		print(A)
}

// Output:
// GOG