defmodule Solution do
  def main() do
    x = read_int()
    Enum.each(1..x, fn(_) -> IO.puts("Hello World") end)
  end
  
  defp read_int() do
    IO.gets("")
    |> Integer.parse()
    |> elem(0)
  end
end

Solution.main()
