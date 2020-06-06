import os
fn test_file(fnameout string) {
  mut fout := os.File{cfile: 0}
  if fnameout != '' {
    fout = os.create(fnameout) or {panic(err)}
    println(fout)
  }
  println(fout)
}

test_file('test.tmp')

/*
os.File {
    cfile: -620627312
    fd: 3
    opened: true
}
os.File {
    cfile: -620627312
    fd: 3
    opened: true
}
*/