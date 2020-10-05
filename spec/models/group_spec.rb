require 'rails_helper'

RSpec.describe Group, type: :model do

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_and_belong_to_many(:investments) }
  end

  context 'validation test' do
    it 'ensures name presence' do
      group = Group.new(name: '').save
      expect(group).to eq(false)
    end
  end

end
