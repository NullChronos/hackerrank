defmodule Solution do
  def main() do
    [_n | arr] =
      :stdio
      |> IO.read(:all)
      |> String.split([" ", "\n"], trim: true)

    arr
    |> Enum.map(&String.to_integer/1)
    |> Enum.each(fn(nth) ->
      fib(nth)
      |> Integer.mod(100000007)
      |> IO.inspect()
    end)
  end

  def fib(nth, acc1 \\ 0, acc2 \\ 1)
  def fib(0, _, _), do: 0
  def fib(1, _acc1, acc2), do: acc2
  def fib(n, acc1, acc2), do: fib(n - 1, acc2, acc1 + acc2)
end

Solution.main()
