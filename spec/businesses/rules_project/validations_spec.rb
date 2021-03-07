require 'rails_helper'

RSpec.describe "RulesProject::Validations" do

  before do
    @project = FactoryBot.create(:project, goal: 200.00)
  end

  context 'project' do

    context 'unpermitted' do

      it 'goal > 500' do
        project = FactoryBot.create(:project)
        project.goal = 550.0

        expect(project.valid?).to eq(false)
      end

      it 'goal < 500' do
        project = FactoryBot.create(:project)
        project.goal = -1.0

        expect(project.valid?).to eq(false)
      end

      it '< today' do
        project = FactoryBot.create(:project)
        project.start_date = 2.days.ago

        expect(project.valid?).to eq(false)
      end

      context 'donation' do

        it "per cent" do
          @project.donations << FactoryBot.create(:donation, value_donation: 100.0)
          @project.amount_collected = @project.donations.sum(:value_donation)

          expect(@project.amount_per_cent).to eq(50)
        end

      end

    end

  end

end