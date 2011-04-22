require 'spec_helper'

describe "ProjectsController" do
  before do
    Account.create(:email => 'joska@koska.eu',
                   :name => 'Joska Koska',
                   :password => 'passw0rd',
                   :password_confirmation => 'passw0rd')
  end
  describe "the signup process", :type => :request do
    it "signs me in" do
      visit '/admin'
      within(".login") do
        fill_in 'email', :with => 'joska@koska.eu'
        fill_in 'password', :with => 'passw0rd'
      end
      click_link 'Sign in'
    end
  end
end

