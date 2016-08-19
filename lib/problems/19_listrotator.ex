defmodule Elixir99Problems.ListRotator do

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p19.html

  defp rotateRec(list1,         list2, 0    ), do: list1 ++ (Enum.reverse(list2))
  defp rotateRec([],            list2, steps), do: rotateRec(Enum.reverse(list2), [],             steps)
  defp rotateRec([head | tail], list2, steps), do: rotateRec(tail,                [head | list2], (steps - 1))

  def rotate([],        _),                    do: []
  def rotate(inputList, steps) when steps < 0, do: rotate(inputList, (steps + length(inputList)))
  def rotate(inputList, steps),                do: rotateRec(inputList, [], steps)  

end
