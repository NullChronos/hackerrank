defmodule Solution do
  def main() do
    [_n | arr] = IO.read(:stdio, :all) |> String.split([" ", "\n"], trim: true)
    
    Enum.each(arr, fn(str) ->
      str
      |> String.split("", trim: true)
      |> Enum.chunk_every(2)
      |> Enum.reduce("", fn([x1, x2], acc) ->
        acc <> x2 <> x1
      end)
      |> IO.puts()
    end)
  end
end

Solution.main()
