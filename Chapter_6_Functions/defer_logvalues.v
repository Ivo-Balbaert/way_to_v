// defer_logvalues.go
package main

import (
	"io"
    "log"
)

func func1(s string) (n int, err error) {
    defer func() {          
        log.Printf("func1(%q) = %d, %v", s, n, err)
    }()                                     
    return 7, io.EOF                
}

func main() {                                       
    func1("Go")                                      
}
// Output: 2019/02/23 14:49:39 func1("Go") = 7, EOF