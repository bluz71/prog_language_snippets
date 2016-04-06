package main

import "fmt"

// A comment.
//
func main() {
	fmt.Println("Hello World.")
	fmt.Println(len("Hello World."))
	fmt.Println(true)

	var x = 1 + 1
	fmt.Println(x)
	fmt.Println(x == 2)

	y := 5 + 5
	fmt.Println(y)

	str := "A stringy string"
	fmt.Println(str)

	const foo = 5
	fmt.Println(foo)
}
