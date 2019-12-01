struct User {
	is_registered bool
}

fn register_user(u User) User {
	return {u | is_registered: true}
}

fn main() {
	mut u := User{}
	u = register_user(u)
	println(u.is_registered.str()) // => true
}
