import rand

fn main() {
    rand.seed()
    ct := 10
    println('here are $ct random numbers:')
    for i := 0; i < ct; i ++ {
        r := rand.next(1000)
        println('$i $r')
    }
}

/* Output:
0 269
1 847
...
9 732
*/
// ?? does it still use C random? see random/random.v