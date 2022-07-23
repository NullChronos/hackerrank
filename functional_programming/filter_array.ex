defmodule Solution do
  def main() do
    [delimiter | elements] =
      :stdio
      |> IO.read(:all)
      |> String.split([" ", "\n"])
      
    {delimiter, _} = Integer.parse(delimiter)

    elements
    |> Enum.map(&String.to_integer(&1))
    |> Enum.reject(&(&1 >= delimiter))
    |> Enum.each(&IO.puts(&1))
  end
end

Solution.main()
