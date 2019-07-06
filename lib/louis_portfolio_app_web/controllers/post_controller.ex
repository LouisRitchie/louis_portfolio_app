defmodule LouisPortfolioAppWeb.PostController do
  use LouisPortfolioAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, _params) do
    render(conn, "show.html")
  end
end
