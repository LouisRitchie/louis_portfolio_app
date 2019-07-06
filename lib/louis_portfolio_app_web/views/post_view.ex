defmodule LouisPortfolioAppWeb.PostView do
  use LouisPortfolioAppWeb, :view

  def markdown_to_html(raw_md) when is_nil(raw_md), do: ""

  def markdown_to_html(raw_md), do: Earmark.as_html!(raw_md)
end
