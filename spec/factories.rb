FactoryGirl.define do
  factory :user do
    name     "Smart Guy"
    email    "smart.guy@example.com"
    password "foobar"
    password_confirmation "foobar"
  end

  factory :post do |f|
    f.sequence(:title) { |n| "Post#{n}" }
    f.content "Lorem ipsum"
    f.association :user
  end
end
