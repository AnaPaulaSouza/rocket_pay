use Mix.Config

config :rocketpay,
  ecto_repos: [Rocketpay.Repo]

# Configures the endpoint
config :rocketpay, RocketpayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jJn0lYzzVZfTREN3s2Wlu1bEnWRZs96xox5je5CldOl/an/HLIRLcjYuvTyz21yD",
  render_errors: [view: RocketpayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Rocketpay.PubSub,
  live_view: [signing_salt: "0YCN5B8k"]

  config :rocketpay, Rocketpay.Repo,
    migration_primary_key: [type: :binary_id],
    migration_foreign_key: [type: :binary_id]

  config :rocketpay, :basic_auth,
         username: "banana",
         password: "nanica123"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
