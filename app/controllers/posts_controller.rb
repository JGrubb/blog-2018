class PostsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @post = Post.find(params[:id])
    if @post.slug != params[:slug]
      redirect_to show_post_path(id: @post.id, slug: @post.slug)
    end
  end

  def delete
  end
end
