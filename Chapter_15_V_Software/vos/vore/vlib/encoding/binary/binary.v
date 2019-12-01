// Copyright (c) 2019 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

module binary


// Little Endian
[inline]
pub fn little_endian_endian_u16(b []byte) u16 {
	_ = b[1] // bounds check
	return u16(b[0]) | u16(u16(b[1])<<u16(8))
}

[inline]
pub fn little_endian_put_u16(b mut []byte, v u16) {
	_ = b[1] // bounds check
	b[0] = byte(v)
	b[1] = byte(v >> u16(8))
}

[inline]
pub fn little_endian_u32(b []byte) u32 {
	_ = b[3] // bounds check
	return u32(b[0]) | u32(u32(b[1])<<u32(8)) | u32(u32(b[2])<<u32(16)) | u32(u32(b[3])<<u32(24))
}

[inline]
pub fn little_endian_put_u32(b mut []byte, v u32) {
	_ = b[3] // bounds check
	b[0] = byte(v)
	b[1] = byte(v >> u32(8))
	b[2] = byte(v >> u32(16))
	b[3] = byte(v >> u32(24))
}

[inline]
pub fn little_endian_u64(b []byte) u64 {
	_ = b[7] // bounds check
	return u64(b[0]) | u64(u64(b[1])<<u64(8)) | u64(u64(b[2])<<u64(16)) | u64(u64(b[3])<<u64(24)) |
		u64(u64(b[4])<<u64(32)) | u64(u64(b[5])<<u64(40)) | u64(u64(b[6])<<u64(48)) | u64(u64(b[7])<<u64(56))
}

[inline]
pub fn little_endian_put_u64(b mut []byte, v u64) {
	_ = b[7] // bounds check
	b[0] = byte(v)
	b[1] = byte(v >> u64(8))
	b[2] = byte(v >> u64(16))
	b[3] = byte(v >> u64(24))
	b[4] = byte(v >> u64(32))
	b[5] = byte(v >> u64(40))
	b[6] = byte(v >> u64(48))
	b[7] = byte(v >> u64(56))
}

// Big Endian
[inline]
pub fn big_endian_u16(b []byte) u16 {
	_ = b[1] // bounds check
	return u16(b[1]) | u16(u16(b[0])<<u16(8))
}

[inline]
pub fn big_endian_put_u16(b mut []byte, v u16) {
	_ = b[1] // bounds check
	b[0] = byte(v >> u16(8))
	b[1] = byte(v)
}

[inline]
pub fn big_endian_u32(b []byte) u32 {
	_ = b[3] // bounds check
	return u32(b[3]) | u32(u32(b[2])<<u32(8)) | u32(u32(b[1])<<u32(16)) | u32(u32(b[0])<<u32(24))
}

[inline]
pub fn big_endian_put_u32(b mut []byte, v u32) {
	_ = b[3] // bounds check
	b[0] = byte(v >> u32(24))
	b[1] = byte(v >> u32(16))
	b[2] = byte(v >> u32(8))
	b[3] = byte(v)
}

[inline]
pub fn big_endian_u64(b []byte) u64 {
	_ = b[7] // bounds check
	return u64(b[7]) | u64(u64(b[6])<<u64(8)) | u64(u64(b[5])<<u64(16)) | u64(u64(b[4])<<u64(24)) |
		u64(u64(b[3])<<u64(32)) | u64(u64(b[2])<<u64(40)) | u64(u64(b[1])<<u64(48)) | u64(u64(b[0])<<u64(56))
}

[inline]
pub fn big_endian_put_u64(b mut []byte, v u64) {
	_ = b[7] // bounds check
	b[0] = byte(v >> u64(56))
	b[1] = byte(v >> u64(48))
	b[2] = byte(v >> u64(40))
	b[3] = byte(v >> u64(32))
	b[4] = byte(v >> u64(24))
	b[5] = byte(v >> u64(16))
	b[6] = byte(v >> u64(8))
	b[7] = byte(v)
}
