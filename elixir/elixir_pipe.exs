defmodule PipeTest do
  def inc(n), do: n + 1

  def dec(n), do: n - 1

  def double(n), do: n * 2

  def perform do
    1 |> inc |> dec |> double
  end
end

IO.puts PipeTest.perform
