require 'rails_helper'

RSpec.describe "RulesDonation::Validations" do

  before do
    @user = FactoryBot.create(:user)
    @project = FactoryBot.create(:project, start_date: Date.today)
    @donation = FactoryBot.create(:donation, project: @project)
  end

  context 'donation' do

    context 'unpermitted' do
      it 'after end line' do
        @project.endline = 35.days.after

        expect(@donation.project.valid?).to eq(false)
      end
    end

    context 'sum value' do
      it 'ammount collected' do
        project = FactoryBot.create(:project, user_id: @user.id)
        donation = FactoryBot.create(:donation, value_donation: 150, project_id: project.id, user_id: @user.id)
        ::RulesDonation::Validations.new(donation).sum_collected(project)


        expect(project.amount_collected).to eq(150)
      end
    end

  end

end