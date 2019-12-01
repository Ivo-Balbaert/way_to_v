struct Cache {
  mut:
    values []int
}

fn fib_cached(n int, cache mut Cache) int {
  is_in_cache := cache.values.len > n
  if is_in_cache {
    return cache.values[n]
  }

  fib_n := if n <= 1 {
    1
  } else {
    fib_cached(n - 1, mut cache) + fib_cached(n - 2, mut cache)
  }

  cache.values << fib_n
  return fib_n
}

mut c := Cache{}
for i := 0; i < 40; i++ {
  fib_i := fib_cached(i, mut c)
  print('$fib_i - ')
}

/*
1 - 1 - 2 - 3 - 5 - 8 - 13 - 21 - 34 - 55 - 89 - 144 - 233 - 377 - 610 - 987 - 1597 - 2584 - 4181 
- 6765 - 10946 - 17711 - 28657 - 46368 - 75025 - 121393 - 196418 - 317811 - 514229 - 832040 - 1346269 
- 2178309 - 3524578 - 5702887 - 9227465 - 14930352 - 24157817 - 39088169 - 63245986 - 102334155 -
*/