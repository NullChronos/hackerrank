defmodule Solution do
  def main() do
    arr1 = read_array()
    arr2 = read_array()
    
    (arr2 -- arr1)
    |> Enum.uniq()
    |> Enum.sort()
    |> Enum.join(" ")
    |> IO.puts()
  end
  
  defp read_array() do
    IO.read(:stdio, :line)
    
    :stdio
    |> IO.read(:line)
    |> String.split([" ", "\n"], trim: true)
    |> Enum.map(&String.to_integer/1)
  end
end

Solution.main()
