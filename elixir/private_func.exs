defmodule PrivateFunc do
  def process(n) do
    n + scale_n(n)
  end

  defp scale_n(n) do
    n + 1
  end
end

IO.puts PrivateFunc.process(2)
