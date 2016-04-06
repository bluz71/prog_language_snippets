i = 10

if i < 5
  puts "Less than five"
elsif i < 9
  puts "Less than 9"
else
  puts "Greater than 9"
end

unless i == 9
  puts "If not!"
end

puts "Case statement."
case i
when 1
  puts 1
when 5
  puts 5
when 10
  puts 10
end

n = 5
loop do
  n += 1
  if n == 20
    break
  end
end
puts "Value of n: #{n}."
