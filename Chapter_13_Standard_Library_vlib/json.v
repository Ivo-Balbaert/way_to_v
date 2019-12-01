import json

struct User {
      name string
      age  int
	// If the field name is different in JSON, it can be specified
	last_name string [json:lastName]  
}

struct Customer {
    first_name    string
    last_name     string
    hometown      string
}

fn main() {
      // JSON string with one struct value
      data := '{ "name": "Frodo", "lastName": "Baggins", "age": 25 }' 
      user := json.decode(User, data) or {
              eprintln('Failed to decode json-string $data')
              return
      }
      println(user.name)
      println(user.last_name)
      println(user.age)

      // JSON string with an array of struct values
      customers_string := '[{ "first_name": "Vitor", "last_name": "Oliveira", "hometown": "Rio de Janeiro" }, { "first_name": "Don", "last_name": "Nisnoni", "hometown": "Kupang" }]'
      customers := json.decode([]Customer, customers_string) or {
            eprintln('Failed to parse json')
            return
      }
      // Print the list of customers
      for customer in customers {
            println('$customer.first_name $customer.last_name: $customer.hometown')
      }
      
      // Generate a JSON string:
      customer := Customer{first_name: "Vitor" last_name: "Oliveira" hometown: "Rio de Janeiro"}
      encoded_json := json.encode(customer)
      println(encoded_json)
      expected := '{"first_name":"Vitor","last_name":"Oliveira","hometown":"Rio de Janeiro"}'
      assert encoded_json == expected
      // back and forth:
      customer2 := json.decode(Customer, encoded_json) or {
            eprintln('Failed to parse json')
            return
      }
      encoded_json2 := json.encode(customer2)
      println(encoded_json2)
      assert(encoded_json == encoded_json2)
}
/* Output:
Frodo
Baggins
25
Vitor Oliveira: Rio de Janeiro
Don Nisnoni: Kupang
{"first_name":"Vitor","last_name":"Oliveira","hometown":"Rio de Janeiro"}
{"first_name":"Vitor","last_name":"Oliveira","hometown":"Rio de Janeiro"}
*/
