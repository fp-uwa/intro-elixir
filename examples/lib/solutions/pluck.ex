defmodule PluckSolution do
  
  @doc """
  Using < Enum.map > write a function
  that accepts an array and a string representing 
  a property name and return an array containing 
  that property from each object. 
  
  For Example:
    Input: [%{color: "red"}, %{color: "blue"}], "color"
    Output: ["red", "blue"]
  """

  @spec standard(array :: [map()], property: atom()) :: List
  def standard(array, property) do
    Enum.map(array, fn x -> x[property] end)
  end

  @spec curried(property: atom()) :: [...]
  def curried(property) do
    fn array -> 
      Enum.map(array, fn(x) -> 
        x[property] 
      end)
    end
  end

end
