import bench
import time

fn main(){
        mut b := bench.new(bench.Benchmark{
                bench_secs: 4,
        })
        
        b.bench('sleep short', sleep_short)    
        b.bench('sleep shorter', sleep_shorter)   
        b.bench('alloc_some', alloc_some)   
}

fn sleep_short(){
        time.sleep_ms(10)
}

fn sleep_shorter(){
        time.sleep_ms(1)
}

fn alloc_some(){
        mut s_arr := []string
        for i := 0; i < 100000; i++{
                s_arr << i.str()
        }
}

/* Output:
sleep short        mean:73.19ips (13.66ms) variance:0.00005 relative_stddev:9.226 [37 cycles|8 ops]
sleep shorter      mean:191.46ips (5.22ms) variance:0.00406 relative_stddev:33.288 [24 cycles|30 ops]
alloc_some         mean:51.40ips (19.46ms) variance:0.00003 relative_stddev:10.864 [41 cycles|5 ops]
*/