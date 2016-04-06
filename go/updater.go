package main

import (
	"fmt"
	"math/rand"
	"runtime"
)

type Person struct {
	name string
	age  int
}

var people []Person

func updater(update <-chan string) {
	for u := range update {
		age := rand.Int()
		for age > 85 {
			age = age / 10
		}
		person := Person{u, age}
		people = append(people, person)
	}
}

func sender(update chan<- string, finish chan<- bool, id int, names []string) {
	update <- names[id]
	finish <- true
}

func main() {
	fmt.Println("One stateful routine, multiple updaters.")
	runtime.GOMAXPROCS(runtime.NumCPU())
	rand.Seed(42)

	names := []string{"john", "fred", "peter", "matthew", "bob"}

	updates := make(chan string)
	finished := make(chan bool)

	// Launch the single updater routine.
	go updater(updates)

	// Launch the sender routines, these will send update requests to the
	// updater routine.
	for i := 0; i < 5; i++ {
		go sender(updates, finished, i, names)
	}

	for i := 0; i < 5; i++ {
		<-finished
	}

	close(updates)

	// Print out the list of people.
	fmt.Println()
	fmt.Println(people)
}
