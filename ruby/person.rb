$HELLO_WORLD = "Hello, world"
FREDDY = "Freddy"

class Person

  @@height = []

  attr_accessor :name, :age

  def Person.add_height(height)
    unless @@height.include?(height)
      @@height << height
    end
  end

  def initialize(name, age)
    @name = name
    @age = age
    @height = "small"
  end

  def height=(height)
    unless @@height.include?(height)
      puts "Unknown height: #{height}."
    end
    @height = height
  end
end

class Italian < Person

  attr_reader :city

  def initialize(name, age, city="Venice")
    @city = city
    super(name, age)
  end

end

puts "Global #{$HELLO_WORLD}."

Person.add_height("small")
Person.add_height("medium")
Person.add_height("tall")

fred = Person.new("fred", 12)
fred.height = "medium"
puts fred.name
p fred

puts
geno = Italian.new("geno", 32)
puts geno.name
p geno
