// Copyright (c) 2019 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

module rand

const (
	read_error = error('crypto.rand.read() error reading random bytes')
)

// NOTE: temp until we have []bytes(buff)
fn c_array_to_bytes_tmp(len, buffer voidptr) []byte {
	mut arr := []byte
	arr = array {
		len: len
		cap: 1
		element_size: 1
		data: buffer
	}
	return arr
}
