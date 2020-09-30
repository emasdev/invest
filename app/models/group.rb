class Group < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :icon, format: { with: /.+\.(jpe?g|png)\z/, message: 'only JPEG,JPG and PNG are valid formats.' }, allow_blank: true
  
  belongs_to :user
  has_and_belongs_to_many :investments

  scope :sort_by_name, -> { order(name: :asc) }

  def goal_amount
    goal = 0
    investments.includes(:groups).select do |investment| 
      if investment.groups.any? then
        goal = investment.total_amount + goal
      end
    end
    
    return goal
  end
end
