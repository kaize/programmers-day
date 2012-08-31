class Web::ApplicationController < ApplicationController
  include AuthHelper
  include FlashHelper

  before_filter :base_title

  helper_method :title

  protect_from_forgery

  private

    def title(part = nil)
      @parts ||= []
      unless part
        return nil if @parts.blank?
        return @parts.join(' - ')
      end
      @parts << part
    end

    def base_title
      title t(:base_title)
    end

end
