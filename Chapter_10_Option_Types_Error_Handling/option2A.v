struct User {
	id int
}
        
fn find_user_by_id(id int) ?User {
        u := User{id: 10}
        return u
}

fn main() {
        user := find_user_by_id(10) or {
                return
        }
        println(user.id)  // => 10
}