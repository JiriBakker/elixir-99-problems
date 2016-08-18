defmodule Elixir99Problems.ListLength do

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p04.html

  defp countElementsRec([], acc),            do: acc
  defp countElementsRec([head | tail], acc), do: countElementsRec(tail, (acc + 1))

  def countElements(inputList) do    
      countElementsRec(inputList, 0)
  end

end
