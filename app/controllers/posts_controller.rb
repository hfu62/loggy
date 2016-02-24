class PostsController < ApplicationController

  def index
# <<<<<<< HEAD
    @posts = Post.all
# =======
# >>>>>>> 8de69b310e754c3be03c53c4418943c4816e21d1
  end

  def new
  end

  def create
# <<<<<<< HEAD
#      # binding pry
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    # if post.user_id == current.user_id
      post.destroy
    end
  end

  private
  def post_params
    params.permit(:date, :check_in, :check_out)
  end
end
# =======
#   end

# end
# >>>>>>> 8de69b310e754c3be03c53c4418943c4816e21d1
