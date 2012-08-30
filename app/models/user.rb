class User < ActiveRecord::Base
  include UserRepository

  attr_accessible :email, :first_name, :last_name, :university, :course, :company, :phone, :admin

  #has_secure_password

  validates :email, presence: true, email: true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true

  state_machine initial: :new do
    state :new
    state :active
    state :deleted

    event :activate do
      transition all - [:active] => :active
    end

    event :deleting do
      transition all - [:deleted] => :deleted
    end
  end

  def full_name
    "#{last_name} #{first_name}"
  end

  def to_s
    full_name
  end

end
