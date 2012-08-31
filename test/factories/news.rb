# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :news do
    name "MyString"
    body "MyText"
    published_at "2012-08-31 15:57:42"
    state "MyString"
    image "MyString"
  end
end
