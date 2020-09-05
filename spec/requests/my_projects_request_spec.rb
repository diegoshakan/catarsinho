require 'rails_helper'

RSpec.describe "MyProjects", type: :request do
  let!(:project) { create(:project) }
  let!(:user) { create(:user) }

  describe "GET /index" do
    it "renders a successful response" do
      project
      get my_projects_index_path
      expect(response).to be_successful
    end
  end

end
