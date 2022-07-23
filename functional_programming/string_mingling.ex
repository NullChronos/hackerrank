defmodule Solution do
  def main() do
    [l1, l2] = IO.read(:stdio, :all) |> String.split("\n", trim: true)
    
    l2 = String.split(l2, "", trim: true)
    
    l1
    |> String.split("", trim: true)
    |> process(l2)
    |> IO.puts()
  end

  defp process(l1, l2, result \\ "")
  defp process([], [], result), do: result
  defp process([h1 | t1], [h2 | t2], result) do
    process(t1, t2, result <> h1 <> h2)
  end
end

Solution.main()
