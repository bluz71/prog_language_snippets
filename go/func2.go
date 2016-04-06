package main

import (
	"errors"
	"fmt"
)

func doWork(n int) (int, error) {
	if n == 42 {
		return -1, errors.New("Something bad happened")
	}

	return 43, nil
}

func main() {
	fmt.Println("Hello, world")
	if r, e := doWork(43); e != nil {
		// Failure.
		fmt.Println("Failure: ", e)
	} else {
		// Success.
		fmt.Println("Success: ", r)
	}
}
