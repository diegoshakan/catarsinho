FactoryBot.define do
  factory :project do
    title { "MyString" }
    description { "MyTextMyTextMyTextMyText MyTextMyText MyTextMyText" }
    goal { 500 }
    start_date { Date.today }
    endline { Date.today + 15 }
    image { Rack::Test::UploadedFile.new('spec/fixtures/noobcode.png', 'image/png') }
    user
  end
end
