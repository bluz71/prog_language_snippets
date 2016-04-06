package main

import "fmt"

func main() {
	var str string = "Hello"
	fmt.Println(str)

	strs := [2]string{"hello", "foo"}
	for _, val := range strs {
		fmt.Println(val)
	}

	slice := []int{0, 2}
	slice[0] = 1
	slice[1] = 2
	fmt.Println("slice1 length=", len(slice))
	fmt.Println(slice)

	slice2 := slice[:]
	slice2 = append(slice, 4)
	fmt.Println("slice2 length=", len(slice2))
	fmt.Println(slice2)

	var slice3 []int
	slice3 = append(slice3, 4)
	slice3 = append(slice3, 5)
	slice3 = append(slice3, 6)
	slice3 = append(slice3, 7)
	slice3 = append(slice3, 8)
	for i := 0; i < 4; i++ {
		slice3 = append(slice3, i)
	}
	fmt.Println()
	fmt.Println("slice3 length=", len(slice3))
	fmt.Println("slice3 capacity=", cap(slice3))
	fmt.Println(slice3)

	hash := make(map[string]int)
	hash["fred"] = 10
	hash["freddy"] = 20
	fmt.Println()
	fmt.Println("Hash: ", hash)
	if val, ok := hash["freddy"]; ok {
		fmt.Println("Hash value: ", val)
	}
}
