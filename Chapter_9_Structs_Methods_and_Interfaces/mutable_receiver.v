struct User {
mut:
    is_registered bool 
} 

fn (u mut User) register() {
    u.is_registered = true 
} 

mut user := User{} 
println(user.is_registered) // => false  
user.register() 
println(user.is_registered) // => true
println(user)   

/*
false
true
{
  is_registered: 1
}
*/