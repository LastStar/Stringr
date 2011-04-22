require 'spec_helper'

feature 'uploading file' do
  background do
    Account.create(:email => 'joska@koska.eu',
                   :name => 'Joska Koska',
                   :password => 'passw0rd',
                   :password_confirmation => 'passw0rd',
                   :role => 'admin')
    Project.create(:name => 'Some project')
    visit '/admin'
    within(".login") do
      fill_in 'email', :with => 'joska@koska.eu'
      fill_in 'password', :with => 'passw0rd'
    end
    click_on 'Sign In'
  end

  scenario 'getting to upload page' do
    click_on 'Projects'
    click_on 'Upload strings file'
    page.should have_content('Upload strings file')
  end
end
