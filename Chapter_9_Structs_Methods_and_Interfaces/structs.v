struct User {
	id   string
	name string
}

fn (u User) str() string {
	return u.name
}

fn main() {
	users := [
	  User{id: '01', name: 'John'},
	  User{id: '02', name: 'Amy'},
	]
	for user in users {
		println(user)
	}
}

/* Output:
John
Amy
*/

// Make an array with an empty User: users := [User{}] 

/* Make an array with one struct instance:
u := User{id: '01', name: 'John'}
users := [u]
*/