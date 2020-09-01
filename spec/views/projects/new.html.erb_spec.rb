require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      title: "MyString",
      description: "MyText",
      goal: 1.5,
      user: nil
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[title]"

      assert_select "textarea[name=?]", "project[description]"

      assert_select "input[name=?]", "project[goal]"

      assert_select "input[name=?]", "project[user_id]"
    end
  end
end
