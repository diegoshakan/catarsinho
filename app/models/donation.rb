class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :value_donation, numericality: { greater_than: 0 }
end
