import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat_elixir, ChatElixirWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "rELpNuXq4S1kecM4e/zIl8yw93HBCUi6yA9xTvXmu2B5DExMB23N5KkquKo6S8Cd",
  server: false

# In test we don't send emails.
config :chat_elixir, ChatElixir.Mailer,
  adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
