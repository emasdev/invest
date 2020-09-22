class Transaction < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  has_one :author_id, through: :user
  has_many :groups
end
