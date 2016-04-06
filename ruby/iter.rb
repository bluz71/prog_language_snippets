def my_func()
  arr = [10, 15, 20]

  fred = "fred"
  arr.each do |n|
    puts "Value: #{n}."
    fred = "fred2"
  end

  puts fred

  arr.each {|n| puts "Value2: #{n}."}
end

my_func
