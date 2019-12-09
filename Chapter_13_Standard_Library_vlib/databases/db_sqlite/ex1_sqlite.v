import sqlite

fn main() {
	db := sqlite.connect(':memory:')
	db.exec("create table users (id integer primary key, name text default '');")
	
	db.exec("insert into users (name) values ('Sam')")
	db.exec("insert into users (name) values ('Peter')")
	db.exec("insert into users (name) values ('Kate')")
	
	nr_users := db.q_int('select count(*) from users')
	println('nr users = $nr_users')
	
	name := db.q_string('select name from users where id = 1')
	// assert name == 'Sam'
	println('The user with id 1 has the name $name')
	
	users := db.exec('select * from users')
	for row in users {
		println(row.vals)
	}	
}	

/* Output: Windows
E:\Vlang\The_Way_to_V\Chapter_13_Standard_Library_vlib\databases\db_sqlite>ex1_sqlite
nr users = 3
The user with id 1 has the name Sam
["1", "Sam"]
["2", "Peter"]
["3", "Kate"]
*/


/* Output: Linux
nr users = 3
The user with id 1 has the name Sam
["1", "Sam"]
["2", "Peter"]
["3", "Kate"]
*/