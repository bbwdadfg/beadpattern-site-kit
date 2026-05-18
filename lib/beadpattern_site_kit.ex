defmodule BeadpatternSiteKit do
  @moduledoc """
  Small URL helpers for [BeadPattern](https://beadpattern.net).
  """

  @base_url "https://beadpattern.net"

  def home_url, do: @base_url

  def tool_url(slug) when is_binary(slug) do
    clean = String.trim(slug, "/")
    if clean == "", do: @base_url, else: @base_url <> "/" <> clean
  end

  def search_url(query) when is_binary(query) do
    encoded = query |> String.trim() |> URI.encode_www_form()
    @base_url <> "/search?q=" <> encoded
  end
end
