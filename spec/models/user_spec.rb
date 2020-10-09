require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:groups) }
    it { should have_many(:investments) }
  end

  context 'validation test' do
    it 'ensures name presence' do
      user = User.new(name: '').save
      expect(user).to eq(false)
    end

    it 'is a valid user' do
      user = User.new(name: 'Testuser').save
      expect(user).to eq(true)
    end
  end
end
