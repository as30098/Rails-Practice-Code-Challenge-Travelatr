class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
  @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def update
    @post = Post.find(params[:id])

    @post = @post.update(post_params)

    if @post.save
      redirect_to @post
    else
      render :edit
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  private

  def blogger_params
    params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
  end
