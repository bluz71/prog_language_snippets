package main

import "fmt"

type Person struct {
	name string
	age  int
}

type Italian struct {
	Person
	region string
}

func changeAge(person *Person) {
	person.age += 10
}

func (person *Person) ageAdjust() {
	person.age += 20
}

func main() {
	fmt.Println("Hello, world.")

	var fred Person
	fred.name = "fred"
	fred.age = 22

	peter := Person{"peter", 34}

	fmt.Println("Before: ", fred)
	fmt.Println("Before: ", peter)

	changeAge(&fred)
	changeAge(&peter)

	fmt.Println("After: ", fred)
	fmt.Println("After: ", peter)

	fred.ageAdjust()
	peter.ageAdjust()

	fmt.Println("After method: ", fred)
	fmt.Println("After method:", peter)
}
