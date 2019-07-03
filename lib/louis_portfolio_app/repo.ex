defmodule LouisPortfolioApp.Repo do
  use Ecto.Repo,
    otp_app: :louis_portfolio_app,
    adapter: Ecto.Adapters.Postgres
end
