defmodule LouisPortfolioAppWeb.PostController do
  use LouisPortfolioAppWeb, :controller
  alias LouisPortfolioApp.Posts

  def index(conn, _params) do
    conn
    |> assign(:posts, Posts.list())
    |> assign(:is_admin, Map.has_key?(conn.assigns, :admin))
    |> render("index.html")
  end

  def show(conn, %{"slug" => slug}) do
    conn
    |> assign(:post, Posts.get(slug))
    |> assign(:is_admin, Map.has_key?(conn.assigns, :admin))
    |> render("post.html")
  end

  def create(conn, %{"slug" => slug, "title" => title, "raw_md" => raw_md}) do
    conn
    |> assign(:post, Posts.create(%{slug: slug, title: title, raw_md: raw_md}))
    |> assign(:is_admin, Map.has_key?(conn.assigns, :admin))
    |> render("post.html")
  end

  def update(conn, %{"slug" => slug, "title" => title, "raw_md" => raw_md}) do
    post = Posts.update(slug, %{slug: slug, title: title, raw_md: raw_md})

    render(conn, "post.html", [post: post])
  end
end
