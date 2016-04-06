package main

import (
	"fmt"
	"runtime"
	"time"
)

func doWork(id int, ch chan<- string) {
	fmt.Println("Inside doWork: ", id)
	if id == 2 {
		time.Sleep(2 * time.Second)
		ch <- "finished"
	}
}

func main() {
	fmt.Println("Concurrency snippet.")

	// By default Go will use '1' OS thread per Go program. Need to do the
	// following to use all cores of a machine. Note, this behaviour may become
	// default with Go 1.5.
	runtime.GOMAXPROCS(runtime.NumCPU())
	fmt.Println("Number of CPUs used: ", runtime.GOMAXPROCS(0))

	ch := make(chan string)

	// Launch 2 go routines.
	go doWork(1, ch)
	go doWork(2, ch)

	out := <-ch
	if out != "finished" {
		fmt.Println("Sleep 3 seconds.")
		time.Sleep(1 * time.Second)
	}
}
