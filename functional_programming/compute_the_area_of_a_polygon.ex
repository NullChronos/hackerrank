defmodule Solution do
  def main() do
    [_n | points] =
      :stdio
      |> IO.read(:all)
      |> String.split([" ", "\n"], trim: true)
      
    points =
      points
      |> Enum.map(&String.to_integer/1)
      |> Enum.chunk_every(2)

    points
    |> Enum.with_index()
    |> Enum.reduce_while([], fn({[x,y], idx}, acc) ->
      next_set = Enum.at(points, idx + 1)

      if !is_nil(next_set) do
        {:cont, acc ++ [[x, y], Enum.at(points, idx+1)]}
      else
        {:halt, acc ++ [[x, y], Enum.at(points, 0)]}
      end
    end)
    |> Enum.chunk_every(2)
    |> Enum.reduce(0, fn([[x1, y1], [x2, y2]], acc) ->
      acc + ((x1*y2) - (y1*x2))
    end)
    |> Kernel./(2)
    |> Float.round(1)
    |> IO.puts()
  end
end

Solution.main()
