defmodule Example do
  # Don't do def double(number = 2) by convention.
  def double(2 = number) do
    IO.puts "double 2"
    number * 2
  end

  def double(3 = number) do
    IO.puts "double 3"
    number * 2
  end
end

Example.double(2)

Example.double(3)
