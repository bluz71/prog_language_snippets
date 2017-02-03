defmodule RecursiveListSum do
  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)
end

IO.puts RecursiveListSum.sum([1, 2, 3])
