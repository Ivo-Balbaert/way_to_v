fn connect_to_db() {
	println("ok, connected to db")
}

fn disconnect_from_db() {
	println("ok, disconnected from db")
}

fn do_db_operations() {
	connect_to_db()
	println("Defering the database disconnect.")
	defer { disconnect_from_db() }
	println("Doing some DB operations ...")
	println("Oops! some crash or network error ...")
	println("Returning from function here!")
	return //terminate the program
	// deferred function executed here just before actually returning,
	// even if there is a return or abnormal termination before
}

do_db_operations()

/* Output:
ok, connected to db
Defering the database disconnect.
Doing some DB operations ...
Oops! some crash or network error ...
Returning from function here!
ok, disconnected from db
*/
