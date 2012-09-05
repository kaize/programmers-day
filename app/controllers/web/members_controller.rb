class Web::MembersController < Web::ApplicationController
  def new
    @member = UserRegistrationType.new process_personal_data: true, subscribe: true
  end

  def create
    @member = UserRegistrationType.new(params[:user])

    if @member.save
      MemberMailer.welcome(@member).deliver
      flash_success
      redirect_to root_path
    else
      flash_error
      render :new
    end
  end

end
