module bench

import time
import math.stats

// Benchmark: iterations per second (ips)
// 
// pass 1, the code to benchmark is run for N (default 2) seconds
//      and calculates how many 100ms cycles it can execute
// pass 2, the code is run for N (default 5) seconds, where the code is executed in blocks of the cycle size determined in pass 1 
//
// outputs:
//
//      1            2             3         4          5             6                7                 8            9
// alloc_some: IPS mean:86.09 (0.011616) (11.62ms) variance:0.00 stddev:0.01 relative_stddev:10.00 [cycles:53|# per cycle:8]
// 
// 1: label of benchmark
// 2: mean of ips
// 3: duration per iteration
// 4: duration per iteration in milliseconds
// 5: sample variance of ips
// 6: sample standard deviation of ips
// 7: relative standard deviation of ips
// 8: number of cycles executed
// 9: number of operations per cycle

struct Benchmark {
mut:
        cycles          int     // number of iterations per cycles
        name            string  // name of benchmark
pub:
        warmup_secs     int
        bench_secs      int
        verbose         bool    // show verbose output
}

pub fn (b mut Benchmark) bench(name string, fp fn()) {
        if b.verbose {
                println('benching: $name')
        }
        b.name = name
        b.run_warmup(fp) 
        b.run_bench(fp)
}

fn (b mut Benchmark) run_warmup(fp fn()) {
        if b.verbose {
                println('\trunning warmup for $b.warmup_secs seconds')
        }
        start_tick := time.ticks()
        end_tick := start_tick + (b.warmup_secs * 1000)
        
        mut count := i64(0)
        for {
                fp()
                count++
                if time.ticks() > end_tick {   // overhead?
                        break 
                }
        }
        duration_ms := (end_tick - start_tick)
        cycles :=  int((f64(count) / f64(duration_ms)) * 100.0) // 100ms cycles
        if b.verbose {
                println('count=$count duration_ms:$duration_ms #iterations per 100ms:$cycles')
        }
        b.cycles = if cycles <= 0 { 1 } else { cycles } 
}

fn (b Benchmark) run_bench(fp fn()) {
        if b.verbose {
                println('\trun bench N=$b.bench_secs secs')
        }
        mut durations := []i64
        start_tick := time.ticks()
        end_tick := start_tick + (b.bench_secs * 1000)
        
        mut cycle_start_tick := i64(0)
        mut cycle_end_tick := i64(0)
        mut iter := i64(0)
        for {
                cycle_start_tick = time.ticks()
                for iter = 0 ; iter < b.cycles; iter++{
                        fp()
                }
                cycle_end_tick = time.ticks()
                durations << cycle_end_tick - cycle_start_tick
                if time.ticks() > end_tick {
                        break 
                }
        }
        duration_ms  := (end_tick - start_tick)
        ips := to_ips(durations, b.cycles)
        b.calc_stats(ips, duration_ms)
}

fn to_ips(durations []i64, cycle_len i64) []f64{
        mut ips := [f64(0)].repeat(durations.len) //[f64(0); durations.len]
        for i, _ in ips{
                ips[i] = f64(cycle_len) / ( f64(durations[i]))  //dur_mssecs
        }
        return ips
}

fn(b Benchmark) calc_stats(ips []f64, total_ms i64){
        size := ips.len
        mean := stats.mean(ips)
        variance := stats.sample_variance(ips)
        stddev := stats.sample_stddev(ips) // is variance neccessary? or just calc sqrt of variance
        relative_stddev := 100.0 * (stddev / mean)
        println('${b.name}: IPS mean:${mean * 1000.0:.2f} (${1.0/(mean* 1000.0)}) (${1.0/(mean):.2f}ms) variance:${variance:.2f} stddev:${stddev:.2f} relative_stddev:${relative_stddev:.2f} [cycles:$size|# per cycle:$b.cycles]')
}

