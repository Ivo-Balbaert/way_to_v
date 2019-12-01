// Copyright (c) 2019 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.

module csv

import strings

struct Writer {
	sb strings.Builder
pub:
mut:
	use_crlf bool
	delimiter byte
}

pub fn new_writer() &Writer {
	return &Writer{
		delimiter: `,`,
		sb: strings.new_builder(200)
	}
}

// write writes a single record
pub fn (w mut Writer) write(record []string) ?bool {
	if !valid_delim(w.delimiter) {
		return err_invalid_delim
	}
	le := if w.use_crlf { '\r\n' } else { '\n' }
	for n, _field in record {
		mut field := _field
		if n > 0 {
			w.sb.write(w.delimiter.str())
		}

		if !w.field_needs_quotes(field) {
			w.sb.write(field)
			continue
		}

		w.sb.write('"')
		
		for field.len > 0 {
			mut i := field.index_any('"\r\n')
			if i < 0 {
				i = field.len
			}

			w.sb.write(field[..i])
			field = field[i..]

			if field.len > 0 {
				z := field[0]
				match z {
				`"` {
					w.sb.write('""')
				}
				`\r`, `\n` {
					w.sb.write(le)
				}
				}
				field = field[1..]
			}
		}
		w.sb.write('"')
	}

	w.sb.write(le)
	return true
}

// Once we have multi dimensional array
// pub fn (w &Writer) write_all(records [][]string) {
// 	for _, record in records {
// 		w.write(record)
// 	}
// }

fn (w &Writer) field_needs_quotes(field string) bool {
	if field == '' {
		return false
	}
	if field.contains(w.delimiter.str()) || (field.index_any('"\r\n') != -1) {
		return true
	}
	return false
}

pub fn (w mut Writer) str() string {
	return w.sb.str()
}
