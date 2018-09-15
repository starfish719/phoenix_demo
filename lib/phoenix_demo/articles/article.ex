defmodule PhoenixDemo.Articles.Article do
  use Ecto.Schema
  import Ecto.Changeset

  alias PhoenixDemo.Articles.Category


  schema "articles" do
    field :body, :string
    field :title, :string

    timestamps()

    belongs_to :category, Category
  end

  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :body, :category_id])
    |> validate_required([:title, :body, :category_id])
  end
end
