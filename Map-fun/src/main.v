module main

fn main() {
  mut rank := map[string]string{}
  println('${rank}')

  rank["0"]="Brazil"
  rank["1"]="US"
  rank["2"]="UK"
  rank["4"]="Spain"
  println('${rank}')

  for k,v in rank{
    println('key:[${k}] value:[${v}]')
  }

  if v := rank['0'] {
	  println('the map value for that key 0 is: ${v}')
  }


}
