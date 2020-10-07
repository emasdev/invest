class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, format: { with: /.+\.(jpe?g|png)\z/,
                             message: 'only JPEG,JPG and PNG are valid formats.' },
                   allow_blank: true

  belongs_to :user
  has_and_belongs_to_many :investments

  scope :sort_by_name, -> { order(name: :asc) }

  def goal_amount_2
    goal = 0
    investments.includes(:groups).select do |investment|
      goal = investment.total_amount + goal if investment.groups.any?
    end

    goal
  end

  def goal_amount
    invested = 0
    investments.each do |investment|
      invested = investment.amount + invested
    end

    invested
  end
end
