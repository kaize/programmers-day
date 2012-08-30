class Web::MembersController < Web::ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash_success
      redirect_to new_member_path
    else
      flash_error
      render :new
    end
  end

end
