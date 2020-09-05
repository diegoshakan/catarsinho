FactoryBot.define do
  factory :user do
    username { FFaker::Name.first_name}
    email { FFaker::Internet.email }
    password { "password" }
    password_confirmation { "password" }
  end
end
