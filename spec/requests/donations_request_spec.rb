require 'rails_helper'

RSpec.describe "Donations", type: :request do
  let!(:project) { create(:project) }
  let!(:user) { create(:user) }
  let!(:donation) { create(:donation) }
  
  let(:valid_attributes) { build(:project).attributes }

  describe "POST /create" do
    it "creates a new donation" do
      expect {
        post project_donations_path, params: { donation: valid_attributes }
      }.to change(Donation, :count).by(1)
    end
    # it "returns http success" do
    #   post "/projects/#{project.id}/donations"
    #   expect(response).to have_http_status(:success)
    # end
  end

end
