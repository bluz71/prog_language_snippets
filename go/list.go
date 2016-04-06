package main

import (
	"container/list"
	"fmt"
)

func main() {
	fmt.Println("List example.")

	vals := list.New()
	vals.PushBack("hello")
	vals.PushBack("world")
	vals.PushBack("great")

	for i := vals.Front(); i != nil; i = i.Next() {
		fmt.Println("Value: ", i)
	}
}
