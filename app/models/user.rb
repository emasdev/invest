class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :transactions, dependent: :destroy
  has_many :groups
end
