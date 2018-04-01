defmodule Bunny.MixProject do
  use Mix.Project

  def project do
    [
      app: :bunny,
      version: "0.1.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      name: "bunny",
      source_url: "https://github.com/PragTob/bunny",
      description: """
      The bunnytastic benchmarking library formerly known as benchee.
      """
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:benchee, ">= 0.12.0"},
    ]
  end

  defp package do
    [
      maintainers: ["Tobias Pfeiffer", "Devon Estes"],
      licenses: ["MIT"],
      links: %{
        "github"     => "https://github.com/PragTob/bunny"
      }
    ]
  end
end
