defmodule MathTest do
  defp sum(x, y) do
    IO.puts "=== starting sum"
    :timer.sleep(1000)
    IO.puts "=== finishing sum"
    x + y
  end

  defp mult(x, y) do
    IO.puts "=== starting mult"
    :timer.sleep(1000)
    IO.puts "=== finishing mult"
    x * y
  end

  def perform do
    sum_task  = Task.async(fn -> sum(1, 2) end)
    mult_task = Task.async(fn -> mult(3, 4) end)

    sum = Task.await(sum_task)
    mult = Task.await(mult_task)

    mult - sum
  end
end

IO.puts MathTest.perform
