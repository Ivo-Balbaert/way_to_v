fn season_of_month(month int) string {
	match month {
		12,1,2  { return 'Winter' }  
		3,4,5   { return 'Spring'}
		6,7,8   { return 'Summer'}
		9,10,11	{ return 'Autumn'}
	}
	return 'Season unknown'
}

println(season_of_month(2)) // => Winter
