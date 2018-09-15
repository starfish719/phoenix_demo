defmodule PhoenixDemo.Repo.Migrations.CreateCategories do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :color_code, :string

      timestamps()
    end

  end
end
