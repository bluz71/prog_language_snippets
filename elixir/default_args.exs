defmodule DefaultArgs do
  def my_func(a, b \\ 2) do
    a + b
  end
end

IO.puts DefaultArgs.my_func(1)
IO.puts DefaultArgs.my_func(1, 4)
