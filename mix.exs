defmodule Pumba.MixProject do
  use Mix.Project
  @package [
    name: "pumba",
    files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
    licenses: ["Unlicense"],
    links: %{"GitHub" => "https://github.com/imanhodjaev/pumba"}
  ]

  def project do
    [
      app: :pumba,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: @package,
      # Docs
      name: "Dust",
      source_url: "https://github.com/imanhodjaev/pumba",
      homepage_url: "https://github.com/imanhodjaev/pumba",
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Pumba.Application, []}
    ]
  end

  defp deps do
    [
      {:floki, "~> 0.30.0"},
      {:tesla, "~> 1.4"},
      {:typed_struct, "~> 0.2.1"},
      {:ex_doc, "~> 0.24.0", only: :dev, runtime: false},
      {:mox, "~> 1.0", only: :test}
    ]
  end
end
