FactoryBot.define do
  factory :donation do
    user 
    project 
    value_donation { rand(10..100) }
  end
end
