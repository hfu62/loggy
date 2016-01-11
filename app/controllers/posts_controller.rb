class PostsController < ApplicationController
  def new
  end

  def create
    Post.create(post_params)
  end

  private
  def post_params
    prams.permit(:user_id, :date, :check_in, :check_out)
  end
end
