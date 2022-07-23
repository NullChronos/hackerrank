defmodule Solution do
  def main() do
    :stdio
    |> IO.read(:line)
    |> String.split("", trim: true)
    |> Enum.uniq()
    |> IO.puts()
  end
end

Solution.main()
