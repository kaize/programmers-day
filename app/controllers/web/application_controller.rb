class Web::ApplicationController < ApplicationController
  include FlashHelper

  helper_method :signed_in?, :title, :current_user

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
