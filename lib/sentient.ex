require IEx

defmodule Sentient do
  @afinn_source File.read!(__DIR__ <> "/../config/AFINN-111.json")
                |> Poison.Parser.parse!

  def analyze(phrase, override_words \\ %{}) do
    afinn = @afinn_source
            |> Map.merge(override_words)

    phrase
    |> String.replace(~r/\n/, "")
    |> Tokenizer.tokenize
    |> Enum.filter(&(afinn[&1]))
    |> Enum.map(&(afinn[&1]))
    |> Enum.reduce(0, &(&1 + &2))

  end
end
