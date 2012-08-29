class Web::Admin::UsersController < Web::Admin::ApplicationController
  def index
    @q = User.active.ransack(params[:q])
    @users = @q.result.page(params[:page])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash_success
      redirect_to admin_users_path
    else
      flash_error
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash_success
      redirect_to admin_users_path
    else
      flash_error
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.suspend
    flash_success
    redirect_to admin_settings_users_path
  end

end
