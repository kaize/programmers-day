module UserRepository
  extend ActiveSupport::Concern

  included do
    scope :active, where(state: :active)
    scope :deleted, where(state: :deleted)
  end

end
