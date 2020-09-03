FactoryBot.define do
  factory :donation do
    user { nil }
    project { nil }
    value { 1.5 }
  end
end
