class Web::Admin::UsersController < Web::Admin::ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.page(params[:page])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    flash_success
    redirect_to admin_users_path
  end

end
