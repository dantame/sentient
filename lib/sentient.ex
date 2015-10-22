defmodule Sentient do
  def analyze(phrase, override_words \\ %{}) do
    tokenized_phrase = Tokenizer.tokenize(phrase)
    afinn_source = File.read!("config/AFINN-111.json")
    afinn = Poison.Parser.parse!(afinn_source) |> Map.merge(override_words)

    tokenized_phrase
    |> Enum.filter(fn(word) -> afinn[word] end)
    |> Enum.map(fn(word) -> afinn[word] end)
    |> Enum.reduce(fn(score, total) -> total + score end)
  end
end
