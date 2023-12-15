defmodule SoundRecommenderWeb.Router do
  use SoundRecommenderWeb, :router
  use Plug.ErrorHandler  #<-- Add this line

  # and implement the callback handle_errors/2
  defp handle_errors(conn, %{reason: %Phoenix.Router.NoRouteError{message: message}}) do
    conn |> json(%{error: message}) |> halt()
  end

  defp handle_errors(conn, _) do
    conn |> json(%{error: "unknown"}) |> halt()
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SoundRecommenderWeb do
    pipe_through :api
    get "/", DefaultController, :index
  end

  # Enable Swoosh mailbox preview in development
  if Application.compile_env(:sound_recommender, :dev_routes) do

    scope "/dev" do
      pipe_through [:fetch_session, :protect_from_forgery]

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
