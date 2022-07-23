defmodule Solution do
  def main do
    num = IO.gets("") |> String.trim |> String.to_integer 
    pow = IO.gets("") |> String.trim |> String.to_integer 

    num
    |> solve(pow)
    |> IO.puts()
  end

  def solve(num, pow, acc \\ 1)
  def solve(num, pow, acc) do
    x = num - :math.pow(acc, pow)

    cond do
      x == 0 -> 1
      x < 0 -> 0
      true -> solve(x, pow, acc + 1) + solve(num, pow, acc + 1)
    end
  end
end

Solution.main()
