defmodule Elixir99Problems.Duplicate do

  # https://johncrane.gitbooks.io/ninety-nine-elm-problems/content/p/p14.html

  def duplicate([]), do: []
  def duplicate([head | tail]) do    
      [head | [head | duplicate(tail)]]
  end

end
