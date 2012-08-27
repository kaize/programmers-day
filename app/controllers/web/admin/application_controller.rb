class Web::Admin::ApplicationController < Web::ApplicationController
  layout "application_admin"

  before_filter :authenticate_admin!

end
