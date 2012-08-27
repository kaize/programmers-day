FactoryGirl.define do
  factory :user do
    email { generate :email }
    password_digest { generate :string }
    name { generate :string }
  end
end
