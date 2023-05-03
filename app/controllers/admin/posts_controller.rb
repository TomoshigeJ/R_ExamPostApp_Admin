class Admin::PostsController < Admin::BaseController
  before_action :set_posts, only: %i[index]
  before_action :set_post, only: %i[show edit update destroy]
  
  def index; end

  def show; end

  def edit; end

  def update
  end

  def destroy
  end

  private

  def set_posts
    @posts = Post.all
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
  end
end
