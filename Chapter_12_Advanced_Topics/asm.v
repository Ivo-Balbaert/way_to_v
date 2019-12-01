fn main() {
	a := 10
	unsafe {
		asm {
			mov eax, [a]
			add eax, 10
			mov [a], eax
		}
	}
}

// Dec 1: asm.v:5:10: syntax error: unexpected `mov`, expecting `STR`