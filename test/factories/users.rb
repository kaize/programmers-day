FactoryGirl.define do
  factory :user do
    email { generate :email }
    #password { generate :string }
    first_name { generate :string }
    last_name { generate :string }
    phone { generate :phone }
  end

  factory :active_user, parent: :user do
    state_event 'activate'
  end

  #factory :admin, parent: :active_user do
    #admin true
  #end

end
