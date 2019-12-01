// Nov 13: next token = `T`
// generics.v:7:14: expected `{` but got `<`

struct User { /* ... */ }
struct Post { /* ... */ }
struct DB   { /* ... */ }

struct Repo <T> {
	db DB
}

// Generic code is notoriously verbose. To reduce clutter, V doesn't require you 
// to add `<T>` every time, since it already knows that Repo is a generic type.
fn new_repo<T>(db DB) Repo {
	return Repo<T>{db: db}
}

// This is a generic function. V will generate it for every type it's used with.
fn (r Repo) find_by_id(id int) T? { // `?` means the function returns an optional
	table_name := T.name // in this example getting the name of the type gives us the table name
	return r.db.query_one<T>('select * from $table_name where id = ?', id)
}

db := new_db()
users_repo := new_repo<User>(db)
// I'm also considering passing the type as an argument
// users_repo := new_repo(User, db)
posts_repo := new_repo<Post>(db)
user := users_repo.find_by_id(1) or {
	eprintln('User not found')
	return
}
post := posts_repo.find_by_id(1) or {
	eprintln('Post not found')
	return
}
