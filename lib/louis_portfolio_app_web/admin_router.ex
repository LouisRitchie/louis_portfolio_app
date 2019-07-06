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

    get "/", HomeController, :index
    get "/posts", PostController, :index
    get "/posts/:slug", PostController, :show

    post "/posts/new", PostController, :create
    post "/posts/:slug/delete", PostController, :delete
    post "/posts/:slug/update", PostController, :update
  end
end
