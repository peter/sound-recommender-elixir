defmodule SoundRecommenderWeb.DefaultController do
  use SoundRecommenderWeb, :controller

  def index(conn, _params) do
    message = "Welcome to Sound Recommender #{Mix.env()}"
    conn |> json(%{message: message})
  end
end
