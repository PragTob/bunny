defmodule Bunny.MixProject do
  use Mix.Project

  def project do
    [
      app: :bunny,
      version: "2.4.2019",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: [
        extras: ["README.md"],
        main: "readme"
      ],
      name: "bunny",
      source_url: "https://github.com/PragTob/bunny",
      description: """
      This was an april's fools joke of a benchmarking library. It'll remain functional though.
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
      {:benchee, "~> 1.0"},
      {:ex_doc, "~> 0.11", only: :dev},
      {:earmark, "~> 1.0", only: :dev}
    ]
  end

  defp package do
    [
      maintainers: ["Tobias Pfeiffer", "Devon Estes"],
      licenses: ["MIT"],
      links: %{
        "github" => "https://github.com/PragTob/bunny"
      }
    ]
  end
end
