module main

fn main() {
  mut mapa := map[string]int{}
  check(mapa)
  mapa['bad_key']=1
  check(mapa)

  mut m := map[string]int{}
  m['one'] = 1
  m['two'] = 2
  println(m['one']) // "1"
  println(m['bad_key']) // "0"
}

fn check(mapa map[string]int) {
  if v := mapa['bad_key'] { 
    println('yeah got the key: bad_key value: ${v}') 
  }else{
    println('key: bad_key not found ') 
  }
}