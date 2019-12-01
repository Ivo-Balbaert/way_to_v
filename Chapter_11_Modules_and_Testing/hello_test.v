import hello

fn test_hello() {
    assert hello.hello() == 'Hello world'
    assert hello.hello() == 'Hello world!'
} 

/* Output for 2nd assert:
hello_test.v:5: FAILED assertion
Function: test_hello()
Source  :     assert hello.hello() == 'Hello world!'
*/