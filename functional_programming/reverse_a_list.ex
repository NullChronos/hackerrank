defmodule Solution do
  def main() do
    :stdio
    |> IO.read(:all)
    |> String.split([" ", "\n"])
    |> Enum.reduce([], &[&1 | &2])
    |> Enum.each(&IO.puts/1)
  end
end

Solution.main()
