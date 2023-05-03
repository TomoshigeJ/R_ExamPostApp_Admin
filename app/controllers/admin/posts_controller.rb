class Admin::PostsController < Admin::BaseController
  before_action :set_posts, only: %i[index]
  before_action :set_post, only: %i[show edit update destroy]
  
  def index; end

  def show; end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to admin_posts_path, success: 'アップデートじょん'
    else
      flash.now[:danger] = 'No アップデートじょん'
      render :edit
    end
  end

  def destroy
    @post.destroy!
    redirect_to admin_posts_path, success: 'デリートじょん'
  end

  private

  def set_posts
    @posts = Post.all
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
