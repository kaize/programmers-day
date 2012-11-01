class Web::Admin::TimepadItemsController < Web::Admin::ApplicationController
  def export
    maillist = TimepadMaillist.find params[:timepad_maillists][:id]
    TimepadItemsExporter.run maillist.original_id

    flash_success
    redirect_to :back
  end
end

