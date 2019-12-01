fn main () {
    mut marr := [[0].repeat(3)].repeat(5)
    for i := 0; i < 5; i++ {
        marr[i] = [0].repeat(3)
        for j :=0 ; j < 3; j++ {
            marr[i][j] = i + j
//            println( '$i, $j, ${i + j}' )
        }
    }
    for i := 0; i < 5; i++ { println(marr[i]) }
}

/* Output:
[0, 1, 2]
[1, 2, 3]
[2, 3, 4]
[3, 4, 5]
[4, 5, 6]
*/