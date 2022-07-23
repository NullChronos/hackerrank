defmodule Solution do
  def main() do
    [_n | arr] =
      :stdio
      |> IO.read(:all)
      |> String.split("\n", trim: true)
      
    map = %{"R" => 0, "G" => 0, "Y" => 0, "B" => 0}
    Enum.each(arr, fn(str) ->
      seq = String.split(str, "", trim: true)
      Enum.reduce_while(seq, {true, map}, fn(colour, {_, acc}) ->
        acc = Map.update(acc, colour, 1, fn(current_value) -> current_value + 1 end)

        if diff_red_green(acc) and diff_yellow_blue(acc) do
          {:cont, {true, acc}}
        else
          {:halt, {false, acc}}
        end
      end)
      |> print_eval()
    end)
  end
  
  defp red_as_green(%{"R" => r, "G" => g}), do: r == g
  defp yellow_as_blue(%{"Y" => y, "B" => b}), do: y == b
  defp diff_red_green(%{"R" => r, "G" => g}), do: r - g <= 1
  defp diff_yellow_blue(%{"Y" => y, "B" => b}), do: abs(y - b) <= 1
  
  defp print_eval({false, _map}), do: IO.puts("False")
  defp print_eval({_, map}) do
    if red_as_green(map) and yellow_as_blue(map) do
      IO.puts("True")
    else
      IO.puts("False") 
    end
  end
end

Solution.main()
