class PostsController < ApplicationController
  def index
    # @posts = Post.all
    @post = Post.new
    @categories = Category.all
    
    @comment = Comment.new
    
    @posts = Post.search(params[:search])
  end

  def new
  end

  def create
    post = Post.new(post_params)
    post.save
    redirect_to posts_path
  end
  
  def show
  end
  
  def edit
    @post = Post.find(params[:id])
    @categories = Category.all
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    
    redirect_to posts_path
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.delete
    
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:article, :category_id, :title)
  end
  
end
