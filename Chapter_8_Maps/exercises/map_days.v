fn main() {
	days := { '1': 'Monday', 
					  '2': 'Tuesday',
					  '3': 'Wednesday',
					  '4': 'Thursday',
					  '5': 'Friday',
					  '6': 'Saturday',
					  '7': 'Sunday'
	}

	for n, name in days {
		println('Day $name is number $n')
	}

	mut is_holiday := false
	for d, day in days {
		if day == 'Thursday' || day == 'Holiday' {
			println('$day is the $d -th day in the week')
			if day == 'Holiday' { is_holiday = true	}
		}
	}
	if !is_holiday {
		println('Holiday is not a day!')
	}
}

/* Output:
Day Monday is number 1
Day Tuesday is number 2
Day Wednesday is number 3
Day Thursday is number 4
Day Friday is number 5
Day Saturday is number 6
Day Sunday is number 7
Thursday is the 4 -th day in the week
Holiday is not a day!
*/