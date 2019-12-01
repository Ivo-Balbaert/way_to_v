struct Address {
  street string
  city string
  state string
  zip int
}

const (
    streets = ['1234 Alpha Avenue', '9876 Test Lane'] 
    test_address = Address {street : streets[0], city: 'Beta', state : 'Gamma', zip : 31416}
    test_address2 = Address {street : streets[1], city: 'Exam', state : 'Quiz', zip : 62832}
)

fn new_address(street, city, state string, zip int) Address {
    return Address{street : street, city : city, state : state, zip : zip}
}

fn (a Address) str() string {
    return 'Address.str(): $a.street, $a.city, $a.state $a.zip'
}

const (
    address1 = new_address('2718 Tau Dr', 'Turing', 'Leibniz', 54366)
    address2 = new_address('3142 Uat Rd', 'Einstein', 'Maxwell', 62840)
)

println(streets)
println('$test_address.street, $test_address.city, $test_address.state $test_address.zip')
println('$test_address2.street, $test_address2.city, $test_address2.state')
println(address1.str())
println(address2.str())

/* Output:
["1234 Alpha Avenue", "9876 Test Lane"]
1234 Alpha Avenue, Beta, Gamma 31416
9876 Test Lane, Exam, Quiz
Address.str(): 2718 Tau Dr, Turing, Leibniz 54366
Address.str(): 3142 Uat Rd, Einstein, Maxwell 62840
*/