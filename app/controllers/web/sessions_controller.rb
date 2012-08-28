class Web::SessionsController < Web::ApplicationController
  layout "web/admin/application"

  def new
  end

  def create
    user = User.active.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to admin_root_path
    else
      flash_error
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to new_session_path
  end

end
