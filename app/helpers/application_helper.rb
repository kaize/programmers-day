module ApplicationHelper
  include AuthHelper

  def can_delete_user?(user)
    user.persisted? && ! current_user?(user)
  end

end
