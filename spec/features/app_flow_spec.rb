require 'rails_helper'

RSpec.describe 'Main Flow', type: :system do
  describe 'Integration test' do
    context 'user flow' do
      it 'interact with main actions' do
        visit('/')
        click_link 'Sign Up'

        # create user
        fill_in('user[name]', with: 'test user')
        click_button 'register'

        # create group
        click_link 'All groups'
        click_link 'New Group'
        fill_in('group[name]', with: 'test group')
        fill_in('group[goal]', with: 100)
        find(".fa-arrow-right").click

        # create investment
        find(".fa-arrow-left").click
        click_link 'All my investments'
        click_link 'New Investment'
        fill_in('investment[name]', with: 'test investment')
        fill_in('investment[amount]', with: 50)
        find(".fa-arrow-right").click
      end
    end
  end
end