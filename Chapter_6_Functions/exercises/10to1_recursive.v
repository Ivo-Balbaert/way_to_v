fn printrec(i int) {
	if i > 10 { return }
	printrec(i + 1)
	print('$i ')
}

printrec(1)

/*
10 9 8 7 6 5 4 3 2 1 
*/