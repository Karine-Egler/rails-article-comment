class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # Refactor: Mise en commun d'une partie du code

  def index
    @posts = Post.all
  end

  def show
  end

  private

  def set_post
    @post = Post.find(params[:id])

  end

  def post_params
    params.require(:post).permit(:title, :content, :url, :user_id, :photo )
  end
end
