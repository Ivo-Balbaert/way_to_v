struct Interval {
	start int
	end   int
}

fn main() {
	inter := Interval{start: 0, end: 3}
	inter2 := Interval{end: 3, start: 0}
	inter3 := Interval{start: 0}
	inter4 := Interval{end: 3}
	println(inter)
	println(inter2)
	println(inter3)
	println(inter4)
}

/*
{
	start: 0
	end: 3
}
{
	start: 0
	end: 3
}
{
	start: 0
	end: 0
}
{
	start: 0
	end: 3
}
*/
