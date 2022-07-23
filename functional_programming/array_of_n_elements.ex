defmodule Solution do
  def main() do
    num = read_int()
    arr = Enum.map(1..num, fn(n) -> n end)
    IO.inspect(arr, limit: :infinity)
  end

  defp read_int() do
    IO.gets("")
    |> Integer.parse()
    |> elem(0)
  end
end

Solution.main()
