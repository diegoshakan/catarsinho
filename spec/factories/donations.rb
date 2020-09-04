FactoryBot.define do
  factory :donation do
    user { 1 }
    project { 1 }
    value { 10.5 }
  end
end
