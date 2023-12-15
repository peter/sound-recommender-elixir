defmodule SoundRecommender.Repo do
  use Ecto.Repo,
    otp_app: :sound_recommender,
    adapter: Ecto.Adapters.Postgres
end
