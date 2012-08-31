class Web::MembersController < Web::ApplicationController
  def new
    @member = User.new
  end

  def create
    @member = User.new(params[:user])

    if @member.save
      MemberMailer.welcome(@member).deliver
      flash_success
      redirect_to new_member_path
    else
      flash_error
      render :new
    end
  end

end
