class Web::UsersController < Web::ApplicationController
  def new
    @user = UserRegistrationType.new
  end

  def create
    @user = UserRegistrationType.new(params[:user])

    if @user.save
      flash_success
    else
      flash_error
      render :new
    end
  end

end
