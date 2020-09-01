FactoryBot.define do
  factory :project do
    title { "MyString" }
    description { "MyText" }
    goal { 1.5 }
    endline { "2020-08-30" }
    user { nil }
  end
end
