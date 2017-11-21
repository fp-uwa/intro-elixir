defmodule BatsmenSolution do

@doc """
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
      |> Stream.map(fn(line) -> #converts line to map
        line 
          |> String.split(",")
          |> Enum.map(fn(val) -> val |> String.trim end)
          |> Enum.zip([:name, :total, :average])
          |> Enum.map(fn {k,v}->{v,k} end)
          |> Map.new
      end) 
      |> Stream.map(fn(line) -> #splits name into initials & surname
        initials = String.split(line[:name], " ") |> List.first
        surname = String.split(line[:name], " ") |> List.last
        %{initials: initials, surname: surname, average: line[:average], total: line[:total]}
      end) 
      |> Stream.map(fn(line) -> struct(Batsman, line) end) #converts line to struct
      |> Enum.to_list
  end
end