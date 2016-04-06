class Person
  CONSTANT_STRING = "A constant string"

  # Class level variable.
  @time: 123

  # Class level function.
  @nation: (country) ->
    "Nation is #{country}."

  # Instance variable.
  height: 175

  # Constructor with instance variable assignment.
  constructor: (@name) ->

  # Instance method with parameters.
  doit: (x, y) ->
    x + y

  # Another instance method
  printName: ->
    console.log "Name is #{@name}."
    console.log "Calling doit, #{@doit(2, 4)}"
    console.log "Height is: #{@height}."
    console.log "Constant is: #{CONSTANT_STRING}."

p = new Person("pete")
p.printName()
console.log ""
console.log "Class level variable #{Person.time}."
console.log "Class level function #{Person.nation("Australia")}."
