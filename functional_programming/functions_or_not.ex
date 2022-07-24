defmodule Solution do
  def main() do
    test_cases = IO.read(:stdio, :line) |> Integer.parse() |> elem(0)

    Enum.each(1..test_cases, fn(_) ->
      n = IO.read(:stdio, :line) |> Integer.parse() |> elem(0)
      [[x, y] | t] = Enum.map(1..n, fn(_) -> read_pair() end)

      [[x,y] | t]
      |> Enum.sort()
      |> check_pairs(x, y)
    end)
  end

  def check_pairs([], _previous_x, _previous_y), do: IO.puts("YES")
  def check_pairs([[x, y] | t], previous_x, previous_y) do
    if x == previous_x do
      if y == previous_y do
        check_pairs(t, x, y)
      else
        IO.puts("NO")
      end
    else
      check_pairs(t, x, y)
    end
  end

  defp read_pair() do
    :stdio
    |> IO.read(:line)
    |> String.split([" ", "\n"], trim: true)
    |> Enum.map(&String.to_integer/1)
  end
end

Solution.main()
