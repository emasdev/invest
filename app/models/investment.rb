class Investment < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :amount, presence: true
  
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :groups
  

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
