module main
import datatypes

fn main() {
  
  mut list := datatypes.LinkedList[int]{}
  list.prepend(1)
  list.prepend(2)
  list.prepend(3)
  println('List: $list ')
  println('List size: ${list.len()} ')
  println('List first: ${list.first()?} ') //? because it's a Result
  println('List last: ${list.last()}   ')  // without ? to show the Result type

  for i,v in list{
    println('Index:[$i], value:[$v]')
  }

  list.pop()!
  list.pop()!
  list.pop()!
  println('List: ${list.len()} ')
}
