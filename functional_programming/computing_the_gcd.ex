defmodule Solution do
  @moduledoc """
  Compute GCD using the Euclidean algorithm.
  """

  def main() do
    input =
      :stdio
      |> IO.read(:all)
      |> String.split([" ", "\n"])
      |> Enum.map(&String.to_integer(&1))

    min = Enum.min(input)
    max = Enum.max(input)

    IO.puts(gcd(min, max))
  end

  def gcd(min, max, prev_r \\ 0) do
    new_r = rem(max, min)

    if new_r == 0 do
      prev_r
    else
      gcd(new_r, min, new_r)
    end
  end
end

Solution.main()
