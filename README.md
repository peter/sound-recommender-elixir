# sound-recommender-elixir

## Elixir and Phoenix Installation

```sh
brew install elixir

mix local.hex
mix archive.install hex phx_new

# PostgreSQL is a relational database server. Phoenix configures applications to use it by default
mix phx.new sound_recommender --database postgres --no-live --no-assets --no-html --no-dashboard
cd sound_recommender
mix ecto.create
mix phx.server
# You can also run your app inside IEx (Interactive Elixir)
iex -S mix phx.server

psql -U postgres sound_recommender_dev
\d
schema_migrations
```

## Resources

* [2. Using Phoenix Framework to Create an Elixir REST API Project](https://www.youtube.com/watch?v=s3WNCjN4Pes)