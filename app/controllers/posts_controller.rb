class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  # Refactor: Mise en commun d'une partie du code

  def index
    @posts = Post.all
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :url, :user_id)
  end
end
