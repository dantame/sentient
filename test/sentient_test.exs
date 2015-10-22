defmodule SentientTest do
  use ExUnit.Case
  doctest Sentient

  test "the score returned adds up to the words provided" do
    test_string = "I really really love cats"
    expected_score = 3
    assert Sentient.analyze(test_string) == expected_score
  end
end
