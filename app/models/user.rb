class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :groups
  has_many :investments, foreign_key: :author_id, dependent: :destroy

  def investments_total_amount
    amount = 0
    investments.each do |investment|
      amount = investment.total_amount + amount
    end

    return amount
  end

  def investments_with_group
    with_group = []
    investments.each do |investment|
      if investment.groups.size > 0
        with_group << investment
      end
    end

    return with_group
  end
end
