require 'spec_helper'

feature 'signing up' do
  background do
    Account.create(:email => 'joska@koska.eu',
                   :name => 'Joska Koska',
                   :password => 'passw0rd',
                   :password_confirmation => 'passw0rd',
                   :role => 'admin')
  end

  scenario 'signing with correct credentials' do
    visit '/admin'
    within(".login") do
      fill_in 'email', :with => 'joska@koska.eu'
      fill_in 'password', :with => 'passw0rd'
    end
    click_on 'Sign In'
    page.should have_content('Dashboard')
  end
end
