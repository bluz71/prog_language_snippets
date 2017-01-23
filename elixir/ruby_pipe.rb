def inc(n)
  n + 1
end

def dec(n)
  n - 1
end

def double(n)
  n * 2
end

puts double(dec(inc(1)))

_inc = inc(1)
_dec = dec(_inc)
_double = double(_dec)

puts _double
