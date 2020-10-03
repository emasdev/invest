class Investment < ApplicationRecord

  validates :name, presence: true

  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :groups

  scope :sort_by_recent, -> { order(created_at: :desc) }

  def total_amount
    return amount * groups.size
  end

  # def total_amount
  #   amount = 0
  #   groups.includes(:investments).select do |g|
  #     if g.investments.none? then
  #       amount += 1
  #     end
  #   end 
  #   return amount
  # end


end
