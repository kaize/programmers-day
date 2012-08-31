class Web::Admin::NewsController < Web::Admin::ApplicationController
  def index
    @q = News.ransack(params[:q])
    @news = @q.result.page(params[:page])
  end

  def new
    @news = News.new
  end

  def edit
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(params[:news])

    if @news.save
      flash_success
      redirect_to admin_news_index_path
    else
      flash_error
      render :new
    end
  end

  def update
    @news = News.find(params[:id])

    if @news.update_attributes(params[:news])
      flash_success
      redirect_to admin_news_index_path
    else
      render :edit
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to admin_news_index_path
  end

end
