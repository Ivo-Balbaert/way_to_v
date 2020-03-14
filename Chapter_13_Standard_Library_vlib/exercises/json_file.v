import (
	os
	json
)

struct Address {
	street	string
	no      int
	ext     string
	postal_code   string
	city    string
	country	string
}

struct User {
	first_name	string
	last_name   string
	addr				Address
}

fn main() {
	addr1 := Address { 
		street:	'Heideland'
		no:	28
		ext:	''
		postal_code:	'2640'
		city:	'Mortsel'
		country: 'Belgium'
	}
	// println(addr1)
/*
{
	street: Heideland
	no: 28
	ext: 
	postal_code: 2640
	city: Mortsel
	country: Belgium
}
*/
	encoded_json := json.encode(addr1)
//  println(encoded_json)
// "{"street":"Heideland","no":28,"ext":"","postal_code":"2640","city":"Mortsel","country":"Belgium"}"

	file_name := 'test_json.txt'
  os.write_file(file_name, encoded_json)

	text := os.read_file(file_name) or {
    eprintln('failed to read $file_name')
    return
  }
	assert(text == encoded_json)

	addr2 := json.decode(Address, text) or {
        eprintln('Failed to parse json')
        return
  }

	println(addr2)

// Nested struct:
user1 := User { 
		first_name:	'Ivo'
		last_name: 'Balbaert'
		addr: addr1
}
println(user1)
encoded_json2 := json.encode(user1)
println(encoded_json2)
// "{"street":"Heideland","no":28,"ext":"","postal_code":"2640","city":"Mortsel","country":"Belgium"}"

file_name2 := 'test_json2.txt'
os.write_file(file_name2, encoded_json2)

text2 := os.read_file(file_name2) or {
  eprintln('failed to read $file_name2')
  return
}
assert(text2 == encoded_json2)

user2 := json.decode(User, text2) or {
      eprintln('Failed to parse json')
      return
}

println(user2)
}