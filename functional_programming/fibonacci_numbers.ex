defmodule Solution do
  def main() do
    IO.gets("")
    |> Integer.parse()
    |> elem(0)
    |> Kernel.-(1)
    |> fib()
    |> IO.puts()
  end

  defp fib(nth, acc1 \\ 0, acc2 \\ 1)
  defp fib(0, _, _), do: 0
  defp fib(1, _acc1, acc2), do: acc2
  defp fib(n, acc1, acc2), do: fib(n - 1, acc2, acc1 + acc2)
end

Solution.main()
