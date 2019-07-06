defmodule LouisPortfolioApp.Posts.Post do
  @doc """
      This is the Post schema object. 
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field(:title, :string)
    field(:header_image, :string)
    field(:raw_md, :string)
    field(:slug, :string)

    timestamps()
  end

  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :header_image, :raw_md, :slug])
    |> validate_required([:title, :raw_md, :slug])
  end
end
