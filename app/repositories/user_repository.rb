module UserRepository
  extend ActiveSupport::Concern

  included do
    scope :new, where(state: :new)
    scope :active, where(state: :active)
    scope :deleted, where(state: :deleted)
  end

end
