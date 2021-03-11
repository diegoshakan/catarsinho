class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :value_donation, numericality: { greater_than: 0 }

  validate :no_donation_after_endline

  private

    def no_donation_after_endline
      ::RulesDonation::Validations.new(self).denie_donation
    end
    
end
