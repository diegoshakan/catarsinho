FactoryBot.define do
  factory :project do
    title { "MyString" }
    description { "MyTextMyTextMyTextMyText MyTextMyText MyTextMyText" }
    goal { 500 }
    start_date { Date.today }
    endline { Date.today + 15 }
    # image { file_blob }
    # image { "app/assets/images/noobcode.png" }
    # image { definition_file_paths.(Rails.root.join('app', 'assets', 'images', 'noobcode.png')) }
    image { Rack::Test::UploadedFile.new('spec/fixtures/noobcode.png', 'image/png') }
    user
  end
end
