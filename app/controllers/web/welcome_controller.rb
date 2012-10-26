class Web::WelcomeController < Web::ApplicationController
  def show
    @info = Page.find_by_uri('info')
    @feedback = Page.find_by_uri('feedback')
    @subscribe = Page.find_by_uri('subscribe')
    @news = News.published.by_published_at.page
    @member = User.new process_personal_data: true, subscribe: true
  end

end
