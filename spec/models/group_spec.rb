require 'rails_helper'

RSpec.describe Group, type: :model do
  context 'validation test' do
    it 'ensures name presence' do
      group = Group.new(name: '').save
      expect(group).to eq(false)
    end
  end

  describe 'associations' do
    # it { should belongs_to(:user) }
    # it { should have_and_belongs_to_many(:investments) }
  end

end
