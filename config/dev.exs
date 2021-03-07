use Mix.Config

# Configure your database
config :rocketpay, Rocketpay.Repo,
  username: "postgres",
  password: "postgres",
  database: "rocket_pay",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :rocketpay, RocketpayWeb.Endpoint,
  http: [port: 8080],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Initialize plugs at runtime for faster development compilation
config :phoenix, :plug_init_mode, :runtime
