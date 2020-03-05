struct User {
	id int
        name string
        age int 
}

struct Repo {
mut:
	users []User 
} 

fn new_repo() Repo {
        user := User{id:10, name: 'Bill', age: 45}
        return Repo {
                users: [user]
        }
} 

pub fn (r Repo) str() string {
        mut str := ''
        for u in r.users {
                str += '$u.id : $u.name / $u.age\n'
        }
        return str 
}

mut repo := new_repo() 

user1 := User{id: 12, name: 'Denise', age: 60}
user2 := User{}
user3 := User{id: 42, name: 'Linda', age: 45}

repo.users << user1
repo.users << user2
repo.users << user3
        
for u in repo.users {
        println('$u.id - $u.name: $u.age')
}

println('')
// using the str() method for Repo:
println(repo)

/* Output:
10 - Bill: 45
12 - Denise: 60
0 - : 0
42 - Linda: 45

10 : Bill / 45
12 : Denise / 60
0 :  / 0
42 : Linda / 45
*/