class Web::WelcomeController < Web::ApplicationController
  def show
    @page = Page.find_by_uri('info')
  end

end
