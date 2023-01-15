module main

fn main() {
  
  cities := {
  	1: 'Gravatai'
  	2: 'Porto Alegre'
    3: 'Gramado'
    4: 'Canela'
    5: 'Bento Goncalvez'
  }

  // iterate over keys
  print("** for by keys \n")
  for key, _ in cities {
    println(key)
  }

  // iterate over values
  print("** for by value \n")
  for _, value in cities {
	  println(value)  
  }

  print("** for by keys via range \n")
  for i in 1..5 {
	  println(cities[i])
  }

}
