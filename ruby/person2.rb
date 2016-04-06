require './person'

class Person2 < Person

  def initialize(name, age)
    super
  end
  
end

jo = Person2.new("Jo", 38)

puts "From Person2."
p jo
