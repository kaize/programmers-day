FactoryGirl.define do
  factory :news do
    name { generate :string }
    body { generate :string }
    published_at { Time.now }
  end
end
