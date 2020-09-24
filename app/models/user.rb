class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :groups
  has_many :transactions, foreign_key: :author_id, dependent: :destroy
end
