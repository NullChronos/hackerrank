defmodule Solution do
  def main() do
    arr_length = read_int()

    acc =
      :stdio
      |> IO.read(:line)
      |> String.split([" ", "\n"], trim: true)
      |> Enum.map(&String.to_integer/1)
      |> Enum.sort(&(&1 >= &2))
      |> compute_acc()

    sum = acc[arr_length-1]
    cases = read_int()
    Enum.reduce(1..cases, Map.new(), fn(_, results) ->
      target = read_int()
      result = Map.get(results, target)

      if result do
        IO.inspect(result)
        results
      else
        subset_size = if sum < target, do: -1, else: get_subset_size(acc, target, 0, arr_length-1)
        IO.inspect(subset_size)
        Map.put(results, target, subset_size)
      end
    end)
  end

  defp get_subset_size(_map, _target, left, right) when left > right, do: left+1
  defp get_subset_size(map, target, left, right) do
    middle = div(left+right, 2)
    if Map.get(map, middle) >= target do 
      get_subset_size(map, target, left, middle-1)
    else
      get_subset_size(map, target, middle+1, right)
    end
  end

  def compute_acc(list, sum \\ 0, index \\ 0, results \\ %{})
  def compute_acc([], _, _, results), do: results
  def compute_acc([head | tail], sum, index, results) do
    sum = sum + head
    compute_acc(tail, sum, index+1, Map.put(results, index, sum))
  end

  defp read_int() do
    :stdio
    |> IO.read(:line)
    |> Integer.parse()
    |> elem(0)
  end
end

Solution.main()
