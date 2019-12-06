import math

fn main() {

	println(jaro_winkler('MARTHA', 'MARHTA'))
	println(jaro_winkler('DIXON', 'DICKSONX'))
	println(jaro_winkler('JELLYFISH', 'SMELLYFISH'))
	
}

fn jaro_winkler(s1, s2 string) f64{
	if s1.len == 0 && s2.len == 0 { return 1.0 } // if both strings are null or empty '', return 1
	if s1.len == 0 || s2.len == 0 { return 0.0 } // If one string has null length, we return 0.

	match_distance := int(math.max(s1.len, s2.len) / 2 - 1)	

	mut s1_matches := [false].repeat(s1.len + 1)
	mut s2_matches := [false].repeat(s2.len + 1)

	mut matches := 0
	mut transp := 0

	for i := 0; i < s1.len; i++ {
		start := int(math.max(0, i - match_distance))
		end := int(math.min(i + match_distance + 1, s2.len))

		for j := start; j < end; j++ {
			if s2_matches[j] { continue }
			if s1[i] != s2[j] { continue }
			s1_matches[i] = true
			s2_matches[j] = true
			matches++
			break
		}
	}

	if matches == 0 { return 0.0 }	

	mut k := 0
	for i := 0; i < s1.len; i++ {
		if !s1_matches[i] { continue }
		for !s2_matches[k] { k++ }
		if s1[i] != s2[k] { transp++ }
		k++
	}

	return (
		(f64(matches)/s1.len) + 
		(f64(matches)/s2.len) + 
		((f64(matches) - ( f64(transp)/2)) / matches)
	) / 3

}

/* Output:
0.944444
0.766667
0.896296
*/