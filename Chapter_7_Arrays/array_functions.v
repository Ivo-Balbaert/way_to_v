fn main() {
// sort: 
	mut nums := [67, -3, 108, 42, 7]
	println(nums)
  nums.sort() //  sort nums in place
	println(nums) // => [-3, 7, 42, 67, 108]
  
// reverse:
  println(nums.reverse()) // => [108, 67, 42, 7, -3]

// filter:	
	nums2 := [1, 2, 3, 4, 5, 6]
  even := nums2.filter(it % 2 == 0) 
	println(even) // => // => [2, 4, 6]
  c := ['v', 'is', 'awesome']
  d := c.filter(it.len > 1) 
  println(d) // => // => ['is', 'awesome']

// map:
	words := ['hello', 'world']
	upper := words.map(it.to_upper())
	println(upper) // => ['HELLO', 'WORLD']

  a := [1, 2, 3, 4] 
  b := a.map(it * 10) 
  println(b) // => [10,20,30,40]

  a2 := ['v', 'is', 'awesome']
  b2 := a2.map(it == 'v') 
  println(b2) // => [true, false, false]

// join:
  mut arr := [''].repeat(100)
  for i in 0.. arr.len - 1 {
    arr[i] = "$i"
  }
  println(arr.join(' line ')) // => 0 line 1 line 2 line 3 line 4 line 5 line 6 line 7 line ...

  // clone:
  arr2 := [1, 2, 4, 5, 4, 6]
  arr_copy := arr2.clone()
  println(arr_copy) // => [1, 2, 4, 5, 4, 6]
}

/* Output:
[67, -3, 108, 42, 7]
[-3, 7, 42, 67, 108]
[108, 67, 42, 7, -3]
[2, 4, 6]
["is", "awesome"]
["HELLO", "WORLD"]
[10, 20, 30, 40]
[true, false, false]
0 line 1 line 2 line 3 line 4 line 5 line 6 line 7 line 8 line 9 line 10 line 11 line 12 line 13 line 14 line 15 line 16 line 17 line 18 line 19 line 20 line 21 line 22 line 23 line 24 line 25 line 26 line 27 line 28 line 29 line 30 line 31 line 32 line 33 line 34 line 35 line 36 line 37 line 38 line 39 line 40 line 41 line 42 line 43 line 44 line 45 line 46 line 47 line 48 line 49 line 50 line 51 line 52 line 53 line 54 line 55 line 56 line 57 line 58 line 59 line 60 line 61 line 62 line 63 line 64 line 65 line 66 line 67 line 68 line 69 line 70 line 71 line 72 line 73 line 74 line 75 line 76 line 77 line 78 line 79 line 80 line 81 line 82 line 83 line 84 line 85 line 86 line 87 line 88 line 89 line 90 line 91 line 92 line 93 line 94 line 95 line 96 line 97 line 98 line 
[1, 2, 4, 5, 4, 6]
*/