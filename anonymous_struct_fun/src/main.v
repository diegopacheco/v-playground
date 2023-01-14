module main

struct Book{
  author struct {
    name string
    age int 
  }
  title string
}

fn main() {

  book := Book{
    author: struct{
      name: 'Diego Pacheco'
      age: 38
    }
    title: "Building Applications with Scala"
  } 
  println(book)

}
