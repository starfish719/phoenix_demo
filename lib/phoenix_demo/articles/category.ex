defmodule PhoenixDemo.Articles.Category do
  use Ecto.Schema
  import Ecto.Changeset


  schema "categories" do
    field :color_code, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:name, :color_code])
    |> validate_required([:name, :color_code])
  end
end
