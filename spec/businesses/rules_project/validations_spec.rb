require 'rails_helper'

RSpec.describe "RulesProject::Validations" do

  before do
    @project = FactoryBot.create(:project, goal: 100.00)
  end

  context 'create' do

    it "build" do
      @project.donations << FactoryBot.create(:donation, value_donation: 100.00)

      expect(@project.amount_per_cent).to eq(100)
    end

  end

end