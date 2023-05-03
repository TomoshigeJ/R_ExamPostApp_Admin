class Admin::UsersController < Admin::BaseController
  before_action :set_users, only: %i[index]
  before_action :set_user, only: %i[show edit update destroy]

  def index; end

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to admin_users_path, success: 'アップデートじょん'
    else
      flash.now[:danger] = 'No アップデートじょん'
      render :edit
    end
  end

  def destroy
    @user.destroy!
    redirect_to admin_users_path, success: 'デリートじょん'
  end

  private

  def set_users
    @users = User.all
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :role, :email) 
  end

end
