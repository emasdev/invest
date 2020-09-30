class Investment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :groups

  scope :sort_by_recent, -> { order(created_at: :desc) }

  def total_amount
    return amount * groups.size
  end


end
