module main

struct User{
   age int
}

fn (u User) can_register() bool {
	return u.age > 21
}

fn main() {
  
    user := User{
      age: 17
    }
    println(user.can_register())
    
    user2 := User{
	    age: 22
    }
    println(user2.can_register()) // "true"

}
