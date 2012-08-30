FactoryGirl.define do
  factory :page do
    name
    uri
    body { generate :string }
  end
end
