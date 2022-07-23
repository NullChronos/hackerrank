defmodule Solution do
  def main() do
    [_n | lists] =
      :stdio
      |> IO.read(:all)
      |> String.split([" ", "\n"], trim: true)

    Enum.each(lists, fn(str) ->
      Enum.reduce(1..String.length(str), [], fn(_, acc) ->
        [h | t] = if Enum.empty?(acc) do
          String.split(str, "", trim: true)
        else
          acc
          |> List.last()
          |> String.split("", trim: true)
        end

        result = Enum.join(t ++ [h])
        acc ++ [result]
      end)
      |> Enum.join(" ")
      |> IO.puts()
    end)
  end
end

Solution.main()
