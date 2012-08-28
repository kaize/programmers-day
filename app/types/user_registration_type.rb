class UserRegistrationType < User
  include BaseType

  attr_accessible :password_confirmation

end
