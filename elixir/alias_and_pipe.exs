defmodule AliasModule do
  def process(str) do
    String.downcase(str)
  end
end

defmodule PipeModule do
  def process(str) do
    alias AliasModule, as: AP
    str |> AP.process
  end
end

IO.puts PipeModule.process "Hello Elixir"
