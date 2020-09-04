FactoryBot.define do
  factory :project do
    title { "MyString" }
    description { "MyTextMyTextMyTextMyText MyTextMyText MyTextMyText" }
    goal { 500 }
    start_date { Date.current }
    endline { Date.current + 15 }
    # image { file_blob }
    user_id { user }
  end
end
