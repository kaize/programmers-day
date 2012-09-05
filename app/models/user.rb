class User < ActiveRecord::Base
  include UserRepository

  attr_accessible :email, :first_name, :last_name, :university, :age, :company, :phone, :course, :course_id,
    :excursio, :process_personal_data, :subscribe

  belongs_to :course

  #has_secure_password

  validates :email, presence: true, email: true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true
  validates :process_personal_data, acceptance: { accept: true }

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
