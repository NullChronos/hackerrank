defmodule Solution do
  def main() do
    nth = read_int()

    Enum.map(0..nth-1, fn(row) ->
      Enum.map(0..row, fn(col) ->
        trunc(factorial(row) / (factorial(col)*(factorial(row-col))))
      end)
    end)
    |> Enum.each(fn(x) -> IO.puts(Enum.join(x, " ")) end)
  end

  defp factorial(n) when n > 0, do: n * factorial(n - 1)
  defp factorial(n) when n <= 0, do: 1

  defp read_int() do
    IO.gets("")
    |> Integer.parse()
    |> elem(0)
  end
end

Solution.main()
