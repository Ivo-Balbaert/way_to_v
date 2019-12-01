import time

fn main() {    
    t := time.now()

    // String representation
    println(t)

    // Unix time (number of seconds that have elapsed since 1970-01-01)
    println(t.uni)

    // There are different formats
    // YYYY-MM-DD HH:MM:SS
    println(t.format_ss())
}

/* Output:
{
	year: 2019
	month: 11
	day: 21
	hour: 10
	minute: 49
	second: 45
	uni: 1574329785
}
1574329785
2019-11-21 10:49:45
*/