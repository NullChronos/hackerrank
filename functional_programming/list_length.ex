defmodule Solution do
  def main() do
    :stdio
    |> IO.read(:all)
    |> String.split([" ", "\n"])
    |> Enum.reduce(0, fn(_, acc) -> acc + 1 end)
    |> IO.puts()
  end
end

Solution.main()
