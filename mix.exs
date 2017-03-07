defmodule Sentient.Mixfile do
  use Mix.Project

  def project do
    [app: :sentient,
     version: "0.0.3",
     elixir: "~> 1.4",
     description: "Simple sentiment analysis based on the AFINN-111 wordlist",
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    []
  end

  defp deps do
    [{:poison, ">= 2.2.0"}]
  end

  defp package do
    [
      files: ["config/AFINN-111.json", "lib", "mix.exs", "README*", "LICENSE*"],
      links: %{"github" => "https://github.com/dantame/sentient"}
    ]
  end
end
