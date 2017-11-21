defmodule Batsmen do

@doc """
  Test this file with the command:
    "mix test test/batsmen_test.exs"

  Read in batsmen from a comma separated file and
  convert them into a list of objects with 
  initials, surnames, runs, and averages.
  
  Round the averages to the nearest integer, sort the batsmen 
  in descending order by total runs and filter to only 
  include batsmen with a surname that starts with C.

  For Example:
    Input:  AN Cook, 11629, 46.33, 1 \n
            GA Gooch, 8900, 42.58, 2 \n
            DI Gower, 8231, 44.25, 3 \n
    Output: 
      [ {initials: AN, surname: Cook, total: 11629, average: 46} ]
"""

  defmodule Batsman do
    defstruct(
      initials: nil, 
      surname: nil, 
      total: nil, 
      average: nil
    )
    @type t :: %Batsman{
      initials: String.t(), 
      surname: String.t(), 
      total: integer,
      average: integer}
  end

  @spec parse(source :: String.t()) :: [Batsman.t()]
  def parse(source) do
      File.stream!(source) #opens file & streams line by line
      |> Stream.map(&String.trim_trailing/1) #removes newlines
      |> Stream.map(fn(line) -> line end) #TODO:
      |> Enum.to_list
  end
end