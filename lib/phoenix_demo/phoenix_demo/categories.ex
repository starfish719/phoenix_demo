defmodule PhoenixDemo.PhoenixDemo.Categories do
  use Ecto.Schema
  import Ecto.Changeset


  schema "categories" do
    field :color_code, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(categories, attrs) do
    categories
    |> cast(attrs, [:name, :color_code])
    |> validate_required([:name, :color_code])
  end
end
