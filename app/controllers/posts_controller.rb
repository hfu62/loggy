class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    # if post.user_id == current.user_id
      post.destroy
    # end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    # if post.user_id == current_user.id
      post.update(post_params)
    # end
  end


  private
  def post_params
    params.permit(:date, :check_in, :check_out, :id)
  end

end