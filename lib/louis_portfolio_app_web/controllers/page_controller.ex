defmodule LouisPortfolioAppWeb.PageController do
  use LouisPortfolioAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
