require 'rails_helper'

RSpec.describe "MyProjects", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/my_projects/index"
      expect(response).to have_http_status(:success)
    end
  end

end
