defmodule RecursiveListAdd do
  def add_1([]), do: []
  def add_1([head | tail]), do: [head + 1 | add_1(tail)]
end

new_list = RecursiveListAdd.add_1([0, 2, 4, 6])
IO.inspect new_list
