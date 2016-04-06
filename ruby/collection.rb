rr = ["hello", "world", "foobar"]
ha = {"hello" => 1, "world" => 2, "foobar" => 3}

puts "Array: #{rr[0]}."
puts "Hash: #{ha["hello"]}."

rr << "Newbie"
rr.each {|n| puts "value of n: #{n}."}

rr.each do |n|
  puts "Iterating a 2nd way; n: #{n}."
end

puts
puts "Hash size: #{ha.size}."
ha.each {|k,v| puts "Hash key k: #{k}. Hash value v: #{v}."}
