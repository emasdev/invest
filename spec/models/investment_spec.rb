require 'rails_helper'

RSpec.describe Investment, type: :model do
  describe 'associations' do
    it { should belong_to(:author).class_name('User') }
    it { should have_and_belong_to_many(:groups) }
  end

  context 'validation test' do
    it 'ensures name presence' do
      investment = Investment.new(name: '').save
      expect(investment).to eq(false)
    end
  end
end
