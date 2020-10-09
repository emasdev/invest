module InvestmentsHelper
  def show_groups(investment)
    groups_text = ''
    investment.groups.each_with_index do |group, index|
      groups_text += if index + 1 < investment.groups.size
                       "#{group.name} |"
                     else
                       group.name
                     end
    end

    groups_text
  end
end
