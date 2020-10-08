module InvestmentsHelper
  def show_groups(investment)
    groups_text = ""
    investment.groups.each_with_index do |group, index|
      if index +1 < investment.groups.size then 
        groups_text += "#{group.name} |" 
      else 
        groups_text += group.name 
      end
    end

    return groups_text
  end
end
