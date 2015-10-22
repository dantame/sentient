# Sentient

Simple sentiment analysis using the [AFINN-111](http://www2.imm.dtu.dk/pubdb/views/publication_details.php?id=6010) wordlist

## Installation

```elixir
# Add it to your deps in your projects mix.exs
defp deps do
  [{:sentient, "~> 0.0.2"}]
end
```

## Usage

```elixir
# Get a score for a phrase
Sentient.analyze("I really love cats!") # => 3
```
