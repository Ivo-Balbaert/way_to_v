fn main() {
	langs := ['python', 'java', 'javascript']
	// Method 1: For loop with index
	for ix, lang in langs {
    println('$ix) $lang')
	}
	// to start the index from 1:
	for i, num in langs {
    mut j := i + 1
    println('$j) $num')
	}
	// to return only every second record:
	for i, num in langs {
    i = i + 1
    println('$i $num')
	}
	// Method 2: For loop without index
	for lang in langs {
    println(lang)
	}      
	// Method 3: Infinite for loop with break
	mut ix := 0
	for {
    if ix >=  langs.len { break }
    println(langs[ix])
    ix++
	}
	// Method 4: For-loop with condition
	mut ix2 := 0
	for ix2 < langs.len {
    println(langs[ix2])
    ix2++
	}
	// Method 5: Traditional C-Style looping
	for m := 0; m < langs.len; m++ {
    println(langs[m])
	}
}

/* Output:
// Method 1:
0) python
1) java
2) javascript
1) python
2) java
3) javascript
1 python
3 javascript
// Method 2:
python
java
javascript
// Method 3:
python
java
javascript
// Method 4:
python
java
javascript
// Method 5:
python
java
javascript
*/
