fn main() {
        mut arr1 := [1, 2, 3]
        println(arr1)      // => [1, 2, 3]
        mut arr3 := arr1
        println(arr3)      // => [1, 2, 3]
        arr1[2] = 100
        println(arr1)      // => [1, 2, 100]
        println(arr3)      // => [1, 2, 100] 
        arr3[1] = 77
        println(arr1)      // => [1, 77, 100]
        println(arr3)      // => [1, 77, 100] 
            
        arr4 := &arr1
        println(arr4)      // => 000000000061FCE0
        arr5 := &arr3
        println(arr5)      // => 000000000061FCC0
        println(*arr4)     // => [1, 77, 100]

        arr1 = [1, 2, 108]
        println(*arr4)     // => [1, 2, 108]
        println(arr3)      // => [1, 77, 108]
}