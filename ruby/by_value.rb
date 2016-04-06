class MyClass
  def initialize(foobar)
    @foobar = foobar
  end

  def update(foobar)
    foobar.upcase!
  end
end

a = "hello"
inst = MyClass.new(a)
puts "Before update: #{a}"
inst.update(a)
puts "After update: #{a}"
