# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :louis_portfolio_app,
  ecto_repos: [LouisPortfolioApp.Repo]

# Configures the endpoint
config :louis_portfolio_app, LouisPortfolioAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LO1Ihqjmu4/26JJM5BQ2urwZ5FkoyDCuAYKEmqoyLRdmrx2+v1UwEO/2LDBTgZUD",
  render_errors: [view: LouisPortfolioAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LouisPortfolioApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configure admin endpoint
config :louis_portfolio_app, LouisPortfolioAppWeb.AdminEndpoint,
  url: [host: "localhost"],
  secret_key_base: "LO1Ihqjmu4/26JJM5BQ2urwZ5FkoyDCuAYKEmqoyLRdmrx2+v1UwEO/2LDBTgZUD"
  # Cant start PubSub like this a second time, because it's already started
  # TODO successfully start pubsub, render_errors for this second endpoint.
  # render_errors: [view: LouisPortfolioAppWeb.ErrorView, accepts: ~w(html json)],
  # pubsub: [name: LouisPortfolioApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
