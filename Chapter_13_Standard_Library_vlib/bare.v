// compile with v -bare bare.v)
fn syscall5(number, arg1, arg2, arg3, arg4, arg5 voidptr) voidptr

fn write(fd int, data voidptr, nbytes u64) int {
	return syscall5(1, fd, data, nbytes, 0, 0)
}

fn main() {
	write(1, "Hello from V running on bare metal!\n", 37)
}