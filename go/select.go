package main

import (
	"fmt"
	"runtime"
	"time"
)

func main() {
	fmt.Println("Select snippet")

	runtime.GOMAXPROCS(runtime.NumCPU())

	ch := make(chan bool)

	go func(ch chan<- bool) {
		time.Sleep(1 * time.Second)
		ch <- true
	}(ch)

	select {
	case <-ch:
		fmt.Println("Received message from func: ")
	case <-time.After(2 * time.Second):
		fmt.Println("Time out encountered.")
	}
}
