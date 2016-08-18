defmodule Elixir99Problems.ListReverse do

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p05.html

  defp myReverseRec([], outputList),            do: outputList
  defp myReverseRec([head | tail], outputList), do: myReverseRec(tail, [head | outputList])

  def myReverse(inputList) do    
      myReverseRec(inputList, [])
  end

  def myReverseSlow([]),            do: []
  def myReverseSlow([head | tail]), do: myReverseSlow(tail) ++ [head]

end
