// memoization:
const (
    MAX = 10
)

struct Cache {
  mut:
    values []int
}

fn fac_cached(n int, cache mut Cache) int {
  is_in_cache := cache.values.len > n
  if is_in_cache {
    return cache.values[n]
  }

  fac_n := if n == 0 {
    1
  } else {
    n * fac_cached(n - 1, mut cache)
  }

  cache.values << fac_n

  return fac_n
}

fn main() {
  mut c := Cache{}
  for n := 0; n <=  MAX; n++ {
    fac_n := fac_cached(n, mut c)
    println('The $n-th Factorial is: $fac_n')
  }
}

// Output:
/*
The 0-th Factorial is: 1
The 1-th Factorial is: 1
The 2-th Factorial is: 2
The 3-th Factorial is: 6
The 4-th Factorial is: 24
The 5-th Factorial is: 120
The 6-th Factorial is: 720
The 7-th Factorial is: 5040
The 8-th Factorial is: 40320
The 9-th Factorial is: 362880
The 10-th Factorial is: 3628800
*/