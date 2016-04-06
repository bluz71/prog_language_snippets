class Person
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def species
    "Home Sapiens"
  end

  def Person.mammal
    "Is a mammal"
  end
end

class Rubyist < Person
end

fred = Rubyist.new("fred", 19)
fred.name = "freddy"
fred.age = 21

puts fred.species
puts fred.name
puts "Fred's age is #{fred.age}."
puts "Is Person a mammal? " + Person.mammal
