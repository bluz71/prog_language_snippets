defmodule Boom do
  def start(n) do
    try do
      raise "Issue"
    rescue
      IO.puts "Hello"
    after
      IO.puts "Done"
    end

    try do
      IO.puts "Hi"
    catch
      IO.puts "Good"
    end
  end
end
