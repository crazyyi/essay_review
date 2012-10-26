FactoryGirl.define do
  factory :user do
    name     "Smart Guy"
    email    "smart.guy@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
