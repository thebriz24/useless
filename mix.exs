defmodule Useless.MixProject do
  use Mix.Project

  def project do
    [
      app: :useless,
      version: "0.1.0",
      elixir: "~> 1.6",
      description:
        "Application that doesn't do anything except start up a supervisor with no children. For the purpose of having an app that a testing runtime can start and stop with no consequences.",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Useless, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.9.3", only: [:dev, :test]},
      {:ex_doc, "~> 0.18.3", only: [:dev]}
    ]
  end

  defp package do
    [
      maintainers: ["thebriz24"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/thebriz24/gen_timer"}
    ]
  end
end
