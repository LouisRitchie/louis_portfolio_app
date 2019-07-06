defmodule LouisPortfolioAppWeb.AdminRouter do
  use LouisPortfolioAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LouisPortfolioAppWeb do
    pipe_through :browser

    get "/", HomeController, :index, [assigns: %{admin: true}]
    get "/posts", PostController, :index, [assigns: %{admin: true}]
    get "/posts/:slug", PostController, :show, [assigns: %{admin: true}]

    post "/posts/new", PostController, :create, [assigns: %{admin: true}]
    post "/posts/:slug/delete", PostController, :delete, [assigns: %{admin: true}]
    post "/posts/:slug/update", PostController, :update, [assigns: %{admin: true}]

  end
end
