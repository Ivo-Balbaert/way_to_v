import time

fn main(){
   w := time.new_stopwatch()
   mut sum := u64(0)
   for i := 0; i < 1*1000*1000; i++ {
      sum += i*i + i
   }
   res := w.elapsed().nanoseconds()
   println('Result: $sum')
   println('Elapsed time: $res nanoseconds')
}

/*
Elapsed time: 3474400 nanoseconds
Result: 16881588911936
*/