class Project < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  has_many :donations, dependent: :destroy

  accepts_nested_attributes_for :donations

  validates :goal, :start_date, :endline, :image, presence: true
  validates :title, length: { maximum: 64 }, presence: true
  validates :description, length: { maximum: 512 }, presence: true

  validate :limit_goal, :limit_start_date, :date_to_endline

  def amount_per_cent
    ::RulesProject::Validations.new(self).total_per_cent
  end

  private
    def limit_goal
      ::RulesProject::Validations.new(self).unpermitted_goal
    end

    def limit_start_date
      ::RulesProject::Validations.new(self).unpermitted_start_date
    end

    def date_to_endline
      ::RulesProject::Validations.new(self).unpermitted_endline
    end
end
