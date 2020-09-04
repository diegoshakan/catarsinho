require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { create(:user) }

  it 'is valid with email, password, full name and role' do
    expect(user).to be_valid
  end

  context 'Validates' do
    it 'is not valid without email' do
      user = build(:user, email: nil)
      user.valid?
      expect(user).to be_invalid
    end

    it 'is not valid without password' do
      user = build(:user, password: nil)
      user.valid?
      expect(user).to be_invalid
    end

    it 'is not valid with wrong password confirmation' do
      user = build(:user, password_confirmation: Devise.friendly_token.first(6))
      user.valid?
      expect(user).to be_invalid
    end
  end
end
