defmodule Solution do
  def main() do
    :stdio
    |> IO.read(:line)
    |> String.split("", trim: true)
    |> process()
    |> Enum.reverse()
    |> Enum.join()
    |> IO.puts()
  end

  defp process(list, check \\ "", count \\ 0, result \\ [])
  defp process([], check, count, result), do: result(check, count, result)
  defp process([char | rest], _check, 0, result), do: process(rest, char, 1, result)
  defp process([char | rest], check, count, result) when char == check, do: process(rest, char, count + 1, result)
  defp process([char | rest], check, count, result) when char != check, do: process(rest, char, 1, result(check, count, result))

  defp result(check, count, result) do
    if count > 1 do
      [check <> Integer.to_string(count) | result]
    else
      [check | result]
    end
  end
end

Solution.main()
