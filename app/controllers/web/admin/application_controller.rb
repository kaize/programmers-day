class Web::Admin::ApplicationController < Web::ApplicationController
  before_filter :basic_auth unless Rails.env.test?

end
