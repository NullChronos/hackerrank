defmodule Solution do
  def main() do
    [s1, s2] =
      :stdio
      |> IO.read(:all)
      |> String.split("\n", trim: true)

    process(s1, s2)
    |> Enum.each(fn(str) -> IO.puts("#{String.length(str)} #{str}") end)
  end

  defp process(str1, str2, buffer \\ [])
  defp process(<<h1::utf8, rest1::binary>>, <<h2::utf8, rest2::binary>>, buffer) when h1 == h2 do
    process(rest1, rest2, [h1 | buffer])
  end
  defp process(str1, str2, buffer) do
    [to_string(Enum.reverse(buffer)), str1, str2]
  end
end

Solution.main()
