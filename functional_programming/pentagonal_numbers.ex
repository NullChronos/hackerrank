defmodule Solution do
  def main do
    [_ | arr] =
      :stdio
      |> IO.read(:all)
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)
      
    Enum.each(arr, fn(n) ->
      (3 * :math.pow(n, 2) - n) / 2
      |> round()
      |> IO.puts()
    end)
  end
end

Solution.main()
