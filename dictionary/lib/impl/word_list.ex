defmodule Dictionary.Impl.WordList do
  @type t :: list(String.t)

  @dictionary_path "assets/words.txt"

  @spec word_list() :: t
  def word_list() do
    @dictionary_path
    |> File.read!
    |> String.split("\n", trim: true)
  end

  @spec random_word(t) :: String.t
  def random_word(word_list) do
    word_list
    |> Enum.random
  end
end
