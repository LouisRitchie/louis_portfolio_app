defmodule LouisPortfolioApp.Repo.Migrations.CreatePostsTable do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :header_image, :string
      add :raw_md, :string
      add :slug, :string

      timestamps()
    end
  end
end
