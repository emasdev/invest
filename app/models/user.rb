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
      if i.groups.any? then
        i.groups.each_with_index do |group, index|
            amount = i.amount + amount
            puts "#{i.amount} + #{amount}"
        end
      end
    end
    return amount
  end

  def external_investments_total_amount
    amount = 0

    investments.includes(:groups).select do |i| 
      if i.groups.none? then
        amount = i.amount + amount
      end
    end
    return amount
  end

end
