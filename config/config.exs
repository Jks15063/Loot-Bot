# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :loot_boot,
  ecto_repos: [LootBoot.Repo]

# Configures the endpoint
config :loot_boot, LootBootWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SQXwIbGffonm20Q73Up3NjOQ98eJMkpNv53GSloeIxqMUdM9Uz/389El4/f4zS+U",
  render_errors: [view: LootBootWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LootBoot.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
