defmodule Yolo.MixProject do
  use Mix.Project

  def project do
    [
      app: :yolo,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:axon, "~> 0.6", override: true},
      {:bumblebee, "~> 0.4"},
      {:exla, "~> 0.6"},
      {:table_rex, "~> 4.0"},
      {:image, ">= 0.0.0"},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
