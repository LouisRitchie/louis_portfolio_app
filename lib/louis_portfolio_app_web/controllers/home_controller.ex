defmodule LouisPortfolioAppWeb.HomeController do
  use LouisPortfolioAppWeb, :controller
  alias LouisPortfolioApp.Posts

  def index(conn, _params) do
    conn
    |> assign(:post, Posts.get("home"))
    |> assign(:is_admin, Map.has_key?(conn.assigns, :admin))
    |> render("index.html")
  end
end
