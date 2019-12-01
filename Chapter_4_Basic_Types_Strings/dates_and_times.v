import time

fn main() {
	// make a Time instance for the datetime: '11.07.1980 21:23:42'
	t :=    time.Time{  year:     1980,
                      month:    7,
                      day:      11,
                      hour:     21,
                      minute:   23,
                      second:   42,
                      uni:      0 }
	println(t)

	assert time.is_leap_year(1600) == true

	assert  '11.07.1980 21:23:42' == t.get_fmt_str(.dot, .hhmmss24, .ddmmyyyy)
	assert  '11.07.1980 21:23' == t.get_fmt_str(.dot,.hhmm24,.ddmmyyyy)
	assert  '21:23' == t.get_fmt_time_str(.hhmm24)
	assert  '9:23 p.m.' == t.get_fmt_time_str(.hhmm12)
	assert  '21:23:42' == t.get_fmt_time_str(.hhmmss24)
	assert  '1980-07-11' == t.get_fmt_date_str(.hyphen, .yyyymmdd)
	assert  '11.07.1980' == t.get_fmt_date_str(.dot,.ddmmyyyy)
  assert 'Jul 11' == t.get_fmt_date_str(.space,.mmmd)
	assert  '21:23:42' == t.get_fmt_time_str(.hhmmss24)
  assert  '21:23' == t.get_fmt_time_str(.hhmm24)
  assert  '9:23:42 p.m.' == t.get_fmt_time_str(.hhmmss12)
  assert  '9:23 p.m.' == t.get_fmt_time_str(.hhmm12)
	assert  '11/07/80'   == t.get_fmt_date_str(.slash,.ddmmyy)
}
