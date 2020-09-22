class Group < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :icon, format: { with: /.+\.(jpe?g|png)\z/, message: 'only JPEG,JPG and PNG are valid formats.' }, allow_blank: true
  
  has_many :transactions
  belongs_to :user

  scope :ordered_by_name, -> { order(name: :asc) }
end
