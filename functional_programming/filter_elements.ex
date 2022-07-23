defmodule Solution do
  def main() do
    cases =
      IO.read(:line)
      |> String.trim()
      |> String.to_integer()

    Enum.each(1..cases, fn(_) ->
      [_, t] =
        IO.read(:line)
        |> String.split()
        |> Enum.map(&String.to_integer/1)

      IO.read(:line)
      |> String.split()
      |> Enum.map(&String.to_integer/1)
      |> Enum.with_index()
      |> Enum.reduce(Map.new(), fn({el, idx}, acc) ->
        Map.update(acc, el, {1, idx}, fn{nth, idx} -> {nth+1, idx} end)
      end)
      |> Enum.filter(fn({_el, {nth, _idx}}) -> nth >= t end)
      |> Enum.sort_by(fn{_el, {_nth, idx}} -> idx end)
      |> Enum.map(fn{el, _} -> el end)
      |> empty_case()
      |> Enum.join(" ")
      |> IO.puts()
    end)
  end
  
  defp empty_case([]), do: ["-1"]
  defp empty_case(list), do: list
end

Solution.main()
