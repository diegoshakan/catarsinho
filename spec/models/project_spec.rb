require 'rails_helper'

RSpec.describe Project, type: :model do
  let!(:user) { create(:user) }
  let!(:project) { create(:project) }

  it 'is valid with all fields' do
    sign_in user
    project.user_id = user.id
    project.update(file: project.file_blob)
    project.reload
    expect(project).to be_valid
  end

  
end
