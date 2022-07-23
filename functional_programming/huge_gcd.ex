defmodule Solution do
  def main() do
    set1 = read_set()
    set2 = read_set()

    factors = [factor(set1), factor(set2)]
    min = Enum.min(factors)
    max = Enum.max(factors)
    
    IO.puts(Integer.mod(Integer.gcd(min, max), 1000000007))
  end
  
  defp factor(list), do: Enum.reduce(list, 1, &*/2)

  defp read_set() do
    IO.read(:line)

    :stdio
    |> IO.read(:line)
    |> String.split([" ", "\n"], trim: true)
    |> Enum.map(&String.to_integer(&1))
  end
end

Solution.main()
