defmodule TokenizerTest do
  use ExUnit.Case
  doctest Tokenizer

  test "the tokenizer parses the given string correctly" do
    test_string = "I am 3    a34 %£TeSt !\"£$%^&*()\"_+{}[]\':@~\'<>,./?|\\`¬      string;"
    expected_list = ["i", "am", "a", "test", "string"]
    assert Tokenizer.tokenize(test_string) == expected_list
  end
end
