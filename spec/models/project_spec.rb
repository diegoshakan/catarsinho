require 'rails_helper'

RSpec.describe Project, type: :model do
  let!(:project) { create(:project) }

  it 'is valid with all fields' do
    expect(project).to be_valid
  end

  context 'Validates' do
    it 'is not valid without user' do
      project = build(:project, user_id: nil)
      project.valid?
      expect(project).to be_invalid
    end
  end
end
