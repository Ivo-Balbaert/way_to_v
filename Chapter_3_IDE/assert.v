fn main() {
	age := 63
	assert(age == 63)
	// assert(age == 64)
}

/* Output:
assert.v:4: FAILED: main()
Source: 	assert(age == 64)
V panic: An assertion failed.
print_backtrace_skipping_top_frames is not implemented on this platform for now...

Apr 9: assert.v:4: FAIL: fn main(): assert age == 64
*/