defmodule Solution do
  def main() do
    :stdio
    |> IO.read(:all)
    |> String.split([" ", "\n"])
    |> Enum.with_index()
    |> Enum.reject(fn{_k, v} -> rem(v, 2) == 0 end)
    |> Enum.each(fn{k, _v} -> IO.puts(k) end)
  end
end

Solution.main()
