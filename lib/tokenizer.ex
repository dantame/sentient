defmodule Tokenizer do
  def tokenize(text) do
    text
      |> String.strip
      |> String.downcase
      |> String.replace(~r/[^a-zA-Z- ]+/, "")
      |> String.replace(~r/ {2,}/, " ")
      |> String.split
  end
end
