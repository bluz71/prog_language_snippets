funcObj =
  helloWorld: "Hello World"
  printHelloWorld: ->
    console.log @helloWorld

funcObj.printHelloWorld()
