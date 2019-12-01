// vlib/strings module header

module strings

struct Builder { 
	mut : 
	buf []byte 
	pub : 
	len int 
	
}
fn repeat (c byte, n int) string 
fn new_builder (initial_size int) Builder 
fn (b mut Builder) write (s string) 
fn (b mut Builder) writeln (s string) 
fn (b mut Builder) str () string 
fn (b mut Builder) free () 
fn levenshtein_distance (a, b string) int 
fn levenshtein_distance_percentage (a, b string) f32 
fn dice_coefficient (s1, s2 string) f32 

