defmodule BeadpatternSiteKit.MixProject do
  use Mix.Project

  def project do
    [
      app: :beadpattern_site_kit,
      version: "0.1.1",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: [],
      description: "Small URL helpers for BeadPattern, the free bead pattern generator.",
      package: package(),
      docs: [
        main: "BeadpatternSiteKit",
        source_url: "https://github.com/bbwdadfg/beadpattern-site-kit"
      ]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        "BeadPattern" => "https://beadpattern.net",
        "Photo to bead pattern" => "https://beadpattern.net/photo-to-bead-pattern",
        "GitHub" => "https://github.com/bbwdadfg/beadpattern-site-kit"
      },
      files: ["lib/beadpattern_site_kit.ex", "mix.exs", "README.md", "LICENSE"]
    ]
  end
end
