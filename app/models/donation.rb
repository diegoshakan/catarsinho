class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :value_donation, numericality: { greater_than: 0 }

  validate :no_donation_after_endline

  private

    def no_donation_after_endline
      if (Date.current > self.project.endline)
        errors.add(:donation, "Projeto encerrado, não é mais possível doar.")
      end
    end
    
end
