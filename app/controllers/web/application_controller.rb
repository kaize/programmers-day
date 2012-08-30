class Web::ApplicationController < ApplicationController
  include AuthHelper
  include FlashHelper

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

end
