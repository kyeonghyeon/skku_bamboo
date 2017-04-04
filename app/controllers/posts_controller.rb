class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @posts = Post.all
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.save
    redirect_to :back
  end
  private
  def post_params
    params.require(:post).permit(:tag, :article)
  end
  
end
