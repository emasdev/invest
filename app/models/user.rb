class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :groups
  has_many :investments, foreign_key: :author_id, dependent: :destroy

  def my_investments
    investments.includes(:groups).select { |a| a.groups.any? }
  end

  def my_external_investments
    investments.includes(:groups).reject { |a| a.groups.any? }
  end

  def investments_total_amount
    amount = 0

    investments.includes(:groups).select do |i| 
      this_amount = i.amount + amount
      if i.groups.any? then
        i.groups.each_with_index do |group, index|
          if index > 0
            amount = i.amount + this_amount
          end
        end
      end
      puts amount
    end
    return amount
  end

end
