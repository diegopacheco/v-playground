module main

struct User { 
  id int 
  name string 
  active bool 
}

fn to_csv[T](v T) string {
	mut parts := []string{}
	$for field in T.fields {
		parts << v.$(field.name).str()
	}
	return parts.join(',')
}

fn main() {
	u := User{1,'Diego',true}
	println(to_csv(u))
}