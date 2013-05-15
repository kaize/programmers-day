class Web::Admin::ApplicationController < Web::ApplicationController
  before_filter :basic_auth

end
