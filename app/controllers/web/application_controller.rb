class Web::ApplicationController < ApplicationController

  helper_method :signed_in?, :title, :current_user

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
