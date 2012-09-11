class Api::ApplicationController < ApplicationController
  before_filter :basic_auth unless Rails.env.test?

end
