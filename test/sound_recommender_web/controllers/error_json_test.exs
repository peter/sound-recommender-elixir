defmodule SoundRecommenderWeb.ErrorJSONTest do
  use SoundRecommenderWeb.ConnCase, async: true

  test "renders 404" do
    assert SoundRecommenderWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert SoundRecommenderWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
