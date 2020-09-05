require 'rails_helper'

RSpec.describe Project, type: :model do
  let!(:project) { create(:project) }

  it 'is valid with all fields' do
    expect(project).to be_valid
  end

  context 'Validates' do
    it 'is not valid without title' do
      project = build(:project, title: nil)
      project.valid?
      expect(project).to be_invalid
    end

    it 'is not valid without description' do
      project = build(:project, description: nil)
      project.valid?
      expect(project).to be_invalid
    end

    it 'is not valid without goal' do
      project = build(:project, goal: nil)
      project.valid?
      expect(project).to be_invalid
    end

    it 'is not valid without start date' do
      project = build(:project, start_date: nil)
      project.valid?
      expect(project).to be_invalid
    end

    it 'is not valid without endline' do
      project = build(:project, endline: nil)
      project.valid?
      expect(project).to be_invalid
    end

    it 'is not valid without user' do
      project = build(:project, user_id: nil)
      project.valid?
      expect(project).to be_invalid
    end
  end
end
