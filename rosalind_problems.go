# Recursivley solve the fibonacci sequence in go. 
package main

import "fmt"

func fib(n int) int {
    if n <= 1 {
	return n
    }
    return fib(n-1) + fib(n-2)
}
