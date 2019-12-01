const (
	USD_VALUE           = 1.0
	YEN_VALUE           = 108.0
	DYNAMIC_DISPLAY_STR = '$$USD_VALUE = ¥$YEN_VALUE'
)

fn main() {
	ss_var := '$:USD'
	println('Vlang : $ inside string')
	println('ss_var = $ss_var')

  println(USD_VALUE)
	println(YEN_VALUE)
	println(DYNAMIC_DISPLAY_STR)
}

/* Output:
Vlang : $ inside string
ss_var = $:USD
1.000000
108.000000
$1.000000 = ¥108.000000
*/