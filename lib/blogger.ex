defmodule Blogger do
  use HTTPoison.Base

  def fetch_blog(url) do
    {:ok, response} = get(url)
    response.body
  end

  def transform_list(input) do
    input
    |> Enum.map(&String.upcase/1)
  end

end
