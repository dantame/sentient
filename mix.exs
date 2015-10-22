defmodule Sentient.Mixfile do
  use Mix.Project

  def project do
    [app: :sentient,
     version: "0.0.1",
     elixir: "~> 1.1",
     description: "Simple sentiment analysis based on the AFINN-111 wordlist",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    []
  end

  defp deps do
    [{:poison, "~> 1.5"}]
  end
end
