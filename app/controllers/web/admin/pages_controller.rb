class Web::Admin::PagesController < Web::Admin::ApplicationController
  def index
    @q = Page.ransack(params[:q])
    @pages = @q.result.page(params[:page])
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(params[:page])

    if @page.save
      flash_success
      redirect_to admin_pages_path
    else
      flash_error
      render :new
    end
  end

  def update
    @page = Page.find(params[:id])

    if @page.update_attributes(params[:page])
      flash_success
      redirect_to admin_pages_path
    else
      render :edit
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to admin_pages_path
  end

end
