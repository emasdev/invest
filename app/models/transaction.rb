class Transaction < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :amount, presence: true
  
  belongs_to :author, class_name: 'User'
  has_many :group_transactions
  has_many :groups, through: :group_transactions

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
