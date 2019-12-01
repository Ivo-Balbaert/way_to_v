fn main () {
    mut marr := [[0].repeat(3)].repeat(5)
    for i := 0; i < 5; i++ {
        for j := 0 ; j < 3; j++ {
            marr[i][j] = i + j
//            println( '$i, $j, ${i + j}' )
        }
    }
    for i := 0; i < 5; i++ { println(marr[i]) }
}

/*
[4, 5, 6]
[4, 5, 6]
[4, 5, 6]
[4, 5, 6]
[4, 5, 6]
*/