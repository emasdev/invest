class Transaction < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :amount, presence: true, numericality: { only_float: true }
  
  belongs_to :user
  has_many :groups
end
