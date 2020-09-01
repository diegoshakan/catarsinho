class Project < ApplicationRecord
  belongs_to :user

  validates :goal, :start_date, presence: true
  validates :title, length: { maximum: 64 }, presence: true
  validates :description, length: { maximum: 512 }, presence: true

  validate :limit_goal, :limit_start_date, on: [:create, :update]

  before_create do
    self.endline = self.start_date + 30
  end

  private
    def limit_goal
      if self.goal < 0 && self.goal >= 500
        errors.add(:goal, "Meta precisa estar entre 0 e 500")
      end
    end

    def limit_start_date
      if (self.start_date < Date.current)
        errors.add(:start_date, "Data não pode ser anterior a hoje")
      end
    end
end
