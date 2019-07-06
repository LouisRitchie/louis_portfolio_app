defmodule LouisPortfolioAppWeb.PostController do
  use LouisPortfolioAppWeb, :controller
  alias LouisPortfolioApp.Posts

  def index(conn, _params) do
    posts = Posts.list()

    render(conn, "index.html", [posts: posts])
  end

  def show(conn, %{"slug" => slug}) do
    post = Posts.get(slug)

    conn
    |> assign(:post, post)
    |> assign(:is_admin, Map.has_key?(conn.assigns, :admin))
    |> render("post.html")
  end

  def create(conn, %{"slug" => slug, "title" => title, "raw_md" => raw_md}) do
    post = Posts.create(%{slug: slug, title: title, raw_md: raw_md})

    render(conn, "post.html", [post: post])
  end

  def update(conn, %{"slug" => slug, "title" => title, "raw_md" => raw_md}) do
    post = Posts.update(slug, %{slug: slug, title: title, raw_md: raw_md})

    render(conn, "post.html", [post: post])
  end
end
