class Api::TimepadMaillistsController < Api::ApplicationController
  def import
    TimepadMaillistsImporter.run
    @lists = TimepadMaillist.all
  end
end
