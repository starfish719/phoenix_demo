# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhoenixDemo.Repo.insert!(%PhoenixDemo.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PhoenixDemo.Articles.Category
alias PhoenixDemo.Repo

init_categories = [
  [
    {:name, "カテゴリ1"},
    {:color_code, "00ffff"}
  ],
  [
    {:name, "カテゴリ2"},
    {:color_code, "ff00ff"}
  ],
  [
    {:name, "カテゴリ3"},
    {:color_code, "ffff00"}
  ],
]

for init_category <- init_categories do
  Repo.insert!(
    %Category{
      name: init_category[:name],
      color_code: init_category[:color_code]
    }
  )
end