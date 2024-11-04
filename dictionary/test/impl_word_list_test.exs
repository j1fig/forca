defmodule DictionaryTest do
  use ExUnit.Case
  alias Dictionary.Impl.WordList

  test "returns word list" do
    word_list = WordList.word_list()

    assert length(word_list) > 0
  end
end
