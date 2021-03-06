defmodule Wabbit.Mixfile do
  use Mix.Project

  def project do
    [app: :wabbit,
     version: "0.3.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :asn1, :public_key, :ssl, :amqp_client, :connection, :gen_stage],
     mod: {Wabbit, []}]
  end

  defp deps do
    [{:gen_stage, "~> 0.12"},
     {:connection, "~> 1.0"},
     {:amqp_client, "~> 3.6"},
     {:rabbit_common, "~> 3.6"}]
  end
end
