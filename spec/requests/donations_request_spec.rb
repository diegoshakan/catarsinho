require 'rails_helper'

RSpec.describe "Donations", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/donations/create"
      expect(response).to have_http_status(:success)
    end
  end

end
