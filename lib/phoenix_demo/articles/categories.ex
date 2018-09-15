defmodule PhoenixDemo.Categories do
  @moduledoc """
  The Categories context.
  """

  import Ecto.Query, warn: false
  alias PhoenixDemo.Repo

  alias PhoenixDemo.Articles.Category

  @doc """
  Return the list of categories.

  ## Examples

      iex> list_categories()
      [%Category{}, ...]

  """
  def list_categories do
    Repo.all(Category)
  end
end