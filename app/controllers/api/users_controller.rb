class Api::UsersController < Api::ApplicationController
  respond_to :xlsx

  def index
    @users = User.all
    respond_with @users
  end

end
