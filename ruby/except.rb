class MyException < Exception
end

def foo_bar()
  big_num = 1000
  begin
    raise MyException, "Something bad happened."
  rescue MyException => e
    puts "Caught the exception in foo_bar."
    p e
    raise
  ensure
    puts "THIS IS JUST LIKE FINALLY."
  end

  raise "All hell is breaking loose."
end

begin
  foo_bar
rescue => e
  puts "Caught the exception in main."
  p e
end
