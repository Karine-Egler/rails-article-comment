class CommentsController < ApplicationController

def new
  @comment = Comment.new
end


def create
  #@post = Post.find(params[:post_id])
  @comment = Comment.new(comment_params)
  @comment.post_id = "1"
  @comment.user = current_user

  if @comment.save
     redirect_to posts_path
  else
    render :new, status: :unprocessable_entity
    # raise
  end
  puts("Hello")
end

private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end

end
