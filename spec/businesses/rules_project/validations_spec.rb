require 'rails_helper'

RSpec.describe "RulesProject::Validations" do

  before do
    @project = FactoryBot.create(:project, goal: 200.00)
  end

  context 'create' do

    it "build" do
      @project.donations << FactoryBot.create(:donation, value_donation: 100.0)
      @project.amount_collected = @project.donations.sum(:value_donation)

      expect(@project.amount_per_cent).to eq(50)
    end

  end

end