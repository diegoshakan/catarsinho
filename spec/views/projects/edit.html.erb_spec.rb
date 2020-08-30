require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      title: "MyString",
      description: "MyText",
      goal: 1.5,
      user: nil
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input[name=?]", "project[title]"

      assert_select "textarea[name=?]", "project[description]"

      assert_select "input[name=?]", "project[goal]"

      assert_select "input[name=?]", "project[user_id]"
    end
  end
end
