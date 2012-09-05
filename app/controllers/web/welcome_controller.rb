class Web::WelcomeController < Web::ApplicationController
  def show
    @info = Page.find_by_uri('info')
    @feedback = Page.find_by_uri('feedback')
    @news = News.published.by_published_at.page
    @member = User.new
  end

end
