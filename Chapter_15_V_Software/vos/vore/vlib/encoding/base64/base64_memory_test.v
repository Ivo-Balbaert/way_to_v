import encoding.base64

fn test_long_encoding(){
	repeats := 1000
	input_size := 3000
	
	s_original := 'a'.repeat(input_size)
	s_encoded := base64.encode(s_original)
	s_decoded := base64.decode(s_encoded)
	
	assert s_encoded.len > s_original.len
	assert s_original == s_decoded

	mut s := 0
	
	ebuffer := malloc( s_encoded.len )
	for i := 0; i < repeats; i++ {
		resultsize := base64.encode_in_buffer(s_original, mut ebuffer)
		s += resultsize
		assert resultsize == s_encoded.len
	}

	dbuffer := malloc( s_decoded.len )
	for i := 0; i < repeats; i++ {
		resultsize := base64.decode_in_buffer(s_encoded, mut dbuffer)
		s += resultsize
		assert resultsize == s_decoded.len
	}

	println( 'Final s: $s' )
	//	assert s == 39147008
}
