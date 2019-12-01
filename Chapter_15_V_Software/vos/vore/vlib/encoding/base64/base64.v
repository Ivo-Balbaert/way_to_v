// Copyright (c) 2019 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

module base64

const (
	Index = [int(0), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	62, 63, 62, 62, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 0, 0, 0,
	0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
	17, 18, 19, 20, 21, 22, 23, 24, 25, 0, 0, 0, 0, 63, 0, 26, 27, 28, 29,
	30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46,
	47, 48, 49, 50, 51]!!

	EndingTable = [0, 2, 1]
	EncodingTable = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
)

/**
 * decode - expects a base64 encoded string. Returns its decoded version.
 * @param data - the encoded input string.
 * @return the decoded version of the input string data.
 * NB: if you need to decode many strings repeatedly, take a look at decode_in_buffer too.
 */
pub fn decode(data string) string {
	buffer := malloc( data.len * 3 / 4 )
	return tos(buffer, decode_in_buffer(data, mut buffer) )
}

/**
 * decode - expects a string. Returns its base64 encoded version.
 * @param data - the input string.
 * @return the base64 encoded version of the input string. 
 * NB: base64 encoding returns a string that is ~ 4/3 larger than the input.
 * NB: if you need to encode many strings repeatedly, take a look at encode_in_buffer too.
 */
pub fn encode(data string) string {
	buffer := malloc( 4 * ((data.len + 2) / 3) )
	return tos(buffer, encode_in_buffer(data, mut buffer))
}

/**
 * decode_in_buffer - expects a string reference, and a buffer in which to store its decoded version.
 * @param data - a reference/pointer to the input string that will be decoded.
 * @param buffer - a reference/pointer to the buffer that will hold the result. 
 * The buffer should be large enough (i.e. 3/4 of the data.len, or larger) to hold the decoded data.
 * @return the actual size of the decoded data in the buffer.
 * NB: this function does NOT allocate new memory, and is suitable for handling very large strings.
 */
pub fn decode_in_buffer(data &string, buffer mut byteptr) int {
	mut padding := 0
	if data.ends_with('=') {
		if data.ends_with('==') {
			padding = 2
		} else {
			padding = 1
		}
	}
	//input_length is the length of meaningful data
	input_length := data.len - padding
	output_length := input_length * 3 / 4

	mut i := 0
	mut j := 0
	mut b := &byte(0)
	mut d := &byte(0)
	unsafe{
		d = byteptr(data.str)
		b = byteptr(buffer)
	}

	for i < input_length {
		mut char_a := 0
		mut char_b := 0
		mut char_c := 0
		mut char_d := 0
		if i < input_length {
			char_a = Index[d[i]]
			i++
		}
		if i < input_length {
			char_b = Index[d[i]]
			i++
		}
		if i < input_length {
			char_c = Index[d[i]]
			i++
		}
		if i < input_length {
			char_d = Index[d[i]]
			i++
		}

		decoded_bytes := (char_a << 18) | (char_b << 12) | (char_c << 6) | (char_d << 0)
		b[j]   = decoded_bytes >> 16
		b[j+1] = (decoded_bytes >> 8) & 0xff
		b[j+2] = (decoded_bytes >> 0) & 0xff
		j += 3
	}
	return output_length
}

/**
 * encode_in_buffer - expects a string reference, and a buffer in which to store its base64 encoded version.
 * @param data - a reference/pointer to the input string.
 * @param buffer - a reference/pointer to the buffer that will hold the result. 
 * The buffer should be large enough (i.e. 4/3 of the data.len, or larger) to hold the encoded data.
 * @return the actual size of the encoded data in the buffer.
 * NB: this function does NOT allocate new memory, and is suitable for handling very large strings.
 */
pub fn encode_in_buffer(data &string, buffer mut byteptr) int {
	input_length := data.len
	output_length := 4 * ((input_length + 2) / 3)

	mut i := 0
	mut j := 0

	mut d	   := &byte(0)
	mut b	   := &byte(0)
	mut etable := &byte(0)
	unsafe{
		d = &byte(data.str)
		b = &byte(buffer)
		etable = &byte(EncodingTable.str)
	}

	for i < input_length {
		mut octet_a := 0
		mut octet_b := 0
		mut octet_c := 0

		if i < input_length {
			octet_a = int(d[i])
			i++
		}
		if i < input_length {
			octet_b = int(d[i])
			i++
		}
		if i < input_length {
			octet_c = int(d[i])
			i++
		}

		triple := ((int(octet_a) << 0x10) + (int(octet_b) << 0x08) + int(octet_c))

		b[j]   = etable[ (triple >> 3 * 6) & 63 ]  // 63 is 0x3F
		b[j+1] = etable[ (triple >> 2 * 6) & 63 ]
		b[j+2] = etable[ (triple >> 1 * 6) & 63 ]
		b[j+3] = etable[ (triple >> 0 * 6) & 63 ]
		j += 4
	}

	padding_length := EndingTable[input_length % 3]
	for i = 0; i < padding_length; i++ {
		b[output_length - 1 - i] = `=`
	}
	return output_length
}
