require 'rails_helper'

RSpec.describe "Donations", type: :request do
  let!(:user) { create(:user) }
  let!(:project) { create(:project, user_id: user.id) }
  let!(:donation) { create(:donation) }

  describe "POST /create" do
    it "creates a new donation" do
      @donation_params = {value_donation: 100.0, user_id: user.id, project_id: project.id}
      expect {
        post project_donations_path, params: { donation: @valid_attributes }
      }.to change(Donation, :count).by(1)
    end
    # it "returns http success" do
    #   post "/projects/#{project.id}/donations"
    #   expect(response).to have_http_status(:success)
    # end
  end

end
