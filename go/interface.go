package main

import "fmt"

// Interfaces should end in 'er', 'or' or 'able'.
//
type Heighter interface {
	height() string
}

type Man struct {
	length int
}

type Woman struct {
	length int
}

func (woman Woman) height() string {
	woman.length += 10
	return "Can be small"
}

func (man *Man) height() string {
	man.length += 10
	return "Can be tall"
}

// Note Heighter interface can be either a by-value or by-reference type.
// Interfaces parameters are NEVER defined with * pointer notation.
//
func printHeight(height Heighter) {
	fmt.Println(height.height())
}

func main() {
	fmt.Println("Interface example.")

	manByValue := Woman{12}
	printHeight(manByValue)
	fmt.Println("ByValue:", manByValue)

	manByRef := Man{23}
	printHeight(&manByRef)
	fmt.Println("ByRef:", manByRef)
}
