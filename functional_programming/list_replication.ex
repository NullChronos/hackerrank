defmodule Solution do
  def main() do
    [num_times_str | elements] =
      :stdio
      |> IO.read(:all)
      |> String.split([" ", "\n"])
        
    {num_times, _} = Integer.parse(num_times_str)

    Enum.each(elements, &Enum.each(1..num_times, fn(_) -> IO.puts(&1) end))
  end
end

Solution.main()
