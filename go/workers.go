package main

import (
	"fmt"
	"time"
)

func chirper(ch <-chan bool, id int) {
	fmt.Println("Inside chirper", id)
	for {
		select {
		case <-ch:
			fmt.Println(" ", id, " received shutdown message from main: ")
			return
		default:
			fmt.Println("  Do work inside chirper", id)
			time.Sleep(1 * time.Second)
		}
	}
}

func main() {
	fmt.Println("Multiple workers/chirpers")

	ch := make(chan bool)
	for i := 0; i < 10; i++ {
		go chirper(ch, i)
	}

	time.Sleep(5 * time.Second)
	for i := 0; i < 10; i++ {
		ch <- true
	}
}
