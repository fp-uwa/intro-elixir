defmodule SecretHandshake do
  use Bitwise
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    code
      |> Integer.to_string(2) 
      |> String.graphemes
      |> Enum.reverse
      |> Enum.with_index
      |> Enum.filter(fn({element, _index}) -> element == "1" end)
      |> List.foldr([], fn({_element, index}, acc) -> 
        case index do
          0 -> ["wink"|acc]
          1 -> ["double blink"|acc]
          2 -> ["close your eyes"|acc]
          3 -> ["jump"|acc]
          4 -> [:reverse|acc]
          _ -> acc
        end
      end)
      |> maybeReverse
  end

  @spec maybeReverse(code :: List) :: List
  defp maybeReverse(code) do
    if Enum.member?(code, :reverse) do
      code |> List.delete(:reverse) |> Enum.reverse
    else code end
  end

end

