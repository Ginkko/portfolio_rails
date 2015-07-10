class PostsController < ApplicationController

  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    if is_admin?
      @post = Post.new
    else
      flash[:alert] = "You must be an administrator to access these functions"
      redirect_to root_path
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:alert] = "Post Added"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    if is_admin?
      @post = Post.find(params[:id])
    else
      flash[:alert] = "You must be an administrator to access these functions"
      redirect_to root_path
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:alert] = "Post Modified"
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private def post_params
    params.require(:post).permit!
  end

end
