defmodule Solution do
  def main() do
    :stdio
    |> IO.read(:all)
    |> String.split([" ", "\n"])
    |> Enum.map(&String.to_integer(&1))
    |> Enum.map(&abs(&1))
    |> Enum.each(&IO.puts(&1))
  end
end

Solution.main()
