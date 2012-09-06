class UserRegistrationType < User
  include BaseType

  validates :process_personal_data, acceptance: { accept: true, allow_nil: false }

end
