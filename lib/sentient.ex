defmodule Sentient do
  def analyze(phrase, override_words \\ %{}) do
    tokenized_phrase = Tokenizer.tokenize(phrase)
    afinn = File.read!(__DIR__ <> "/../config/AFINN-111.json")
            |> Poison.Parser.parse!
            |> Map.merge(override_words)

    tokenized_phrase
    |> Enum.filter(fn(word) -> afinn[word] end)
    |> Enum.map(fn(word) -> afinn[word] end)
    |> Enum.reduce(fn(score, total) -> total + score end)
  end
end
