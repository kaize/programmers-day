class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest

  has_secure_password

  validates :email, presence: true, email: true, uniqueness: { case_sensitive: false }

end
