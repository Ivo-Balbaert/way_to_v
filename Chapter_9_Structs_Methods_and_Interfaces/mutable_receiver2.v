struct Item {
mut:
  thing int
}

fn (i mut Item) do_thing() Item {
  i.thing = 1
  return *i
}

mut itm := Item{}
itm.do_thing()
println(itm)

/* Output:
{
	thing: 1
}
*/