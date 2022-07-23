defmodule Solution do
  def main() do
    n = IO.read(:stdio, :line) |> Integer.parse() |> elem(0)

    Enum.each(1..n, fn(_) ->
      [x, y] = read_pair()
      
      similarities_count(x, y)
      |> IO.puts()
    end)
  end
  
  defp similarities_count(x, y) do
    n = Integer.gcd(x, y)
    range =
      n
      |> :math.sqrt()
      |> floor()
      
    Enum.reduce(1..range, 0, fn(i, acc) ->
      if rem(n, i) == 0 do
        if div(n, i) == i do
          acc + 1
        else
          acc + 2
        end
      else
        acc
      end
    end)
  end

  defp read_pair() do
    :stdio
    |> IO.read(:line)
    |> String.split([" ", "\n"], trim: true)
    |> Enum.map(&String.to_integer/1)
  end
end

Solution.main()
