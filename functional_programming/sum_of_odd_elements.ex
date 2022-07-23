defmodule Solution do
  require Integer
  
  def main() do
    :stdio
    |> IO.read(:all)
    |> String.split([" ", "\n"])
    |> Enum.map(&String.to_integer(&1))
    |> Enum.reduce(0, fn(n, acc) ->
      if Integer.is_odd(n) do
        n + acc
      else
        acc
      end
    end)
    |> IO.puts()
  end
end

Solution.main()
