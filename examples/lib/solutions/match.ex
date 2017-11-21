defmodule MatchSolution do

  @doc """
    Use < Enum.filter > to write a function 
    that takes a list of objects and finds all objects
    that match a given property.

    For Example:
      Input: 
        [ { id: 1, height: 20 },
          { id: 2, height: 25 },
          { id: 3, height: 20 } ], 
        { height: 20 }
      Output: 
        [ {id: 1, height: 20}, 
          {id: 3, height: 20} ]
  """

  @spec standard(array :: list(map), key :: any, value :: any) :: list(map)
  def standard(array, key, value) do 
      Enum.filter(array, fn x -> x[key] === value end)
  end 

  @spec curried(key :: any) :: list(map)
  def curried(key) do
    fn value ->
      fn array ->
        array[key] === value
      end
    end
  end
end