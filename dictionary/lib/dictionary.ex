defmodule Dictionary do

  @word_list "assets/words.txt"
    |> File.read!
    |> String.split("\n", trim: true)

  def word_list do
  end

  def random_word do
    @word_list
    |> Enum.random
  end
end
