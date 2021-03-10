require 'rails_helper'

RSpec.describe "RulesDonation::Validations" do

  before do
    @project = FactoryBot.create(:project, start_date: Date.today)
    @donation = FactoryBot.create(:donation, project: @project)
  end

  context 'project' do

    context 'unpermitted' do

      it 'after end line' do
        @project.endline = 35.days.after

        expect(@donation.project.valid?).to eq(false)
      end

    end

  end

end