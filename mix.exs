defmodule LoggerPapertrailTest.Mixfile do
  use Mix.Project

  def project do
    [app: :logger_papertrail_test,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:logger_papertrail_backend, "~> 0.2.0"}
    ]
  end
end
