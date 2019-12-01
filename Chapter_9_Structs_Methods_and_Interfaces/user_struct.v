struct User {
	id int 
}

fn main() {
	user1 := User{id: 10}
	user2 := User{}
  user3 := User{id: 42}
  users := [user1, user2, user3]
	for user in users {
		println(user)
	}
}

/*
{
	id: 10
}
{
	id: 0
}
{
	id: 42
}
*/
