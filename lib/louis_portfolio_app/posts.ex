defmodule LouisPortfolioApp.Posts do
  alias LouisPortfolioApp.Repo
  alias LouisPortfolioApp.Posts.Post

  def list, do: Repo.all(Post)

  def get(slug) do
    Post
    |> Repo.get_by(slug: slug)
  end

  def create(post) do 
    %Post{}
    |> Ecto.Changeset.change(post)
    |> Repo.insert!
  end

  def update(slug, post) do 
    Post
    |> Repo.get_by(slug: slug)
    |> Ecto.Changeset.change(post)
    |> Repo.update!
  end

  def delete(slug) do
    Post
    |> Repo.get_by(slug: slug)
    |> Repo.delete!
  end
end
