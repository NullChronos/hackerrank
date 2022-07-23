defmodule Solution do
  def main() do
    [_cases | elements] =
      :stdio
      |> IO.read(:all)
      |> String.split([" ", "\n"])
    
    elements
    |> parse_input()
    |> Enum.each(fn(num) ->
        Enum.reduce(1..8, 0.00000, fn n, accum ->
          f = n + 1
          r =
          if n == 1 do 
            1.00000 + num + :math.pow(num, f) / factorial(f)
          else 
            :math.pow(num, f) / factorial(f)
          end
          
          accum + r
        end)
        |> Float.round(4)
        |> IO.puts()
    end)
  end
  
  defp factorial(0), do: 1
  defp factorial(n), do:  n * factorial(n - 1)
  
  defp parse_input(list) do
    list
    |> Enum.reject(&String.length(&1) == 0)
    |> Enum.map(&Float.parse(&1))
    |> Enum.map(&elem(&1, 0))
  end
end

Solution.main()
