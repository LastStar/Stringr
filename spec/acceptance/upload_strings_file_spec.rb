require 'spec_helper'

feature 'uploading file' do
  background do
    Account.delete_all
    Project.delete_all
    Account.create(:email => 'joska@koska.eu',
                   :name => 'Joska Koska',
                   :password => 'passw0rd',
                   :password_confirmation => 'passw0rd',
                   :role => 'admin')
    Project.create(:name => 'Some project')
    log_with(email:'joska@koska.eu', password:'passw0rd')
  end

  scenario 'getting to upload page' do
    click_on 'Projects'
    click_on 'Upload strings file'
    page.should have_content('Upload strings file')
  end

  scenario 'uploading file' do
    click_on 'Projects'
    click_on 'Upload strings file'
    attach_file 'project_file', 'spec/fixtures/test.strings'
    click_on 'Upload'
    page.should have_content('File uploaded')
  end

  scenario 'project should have string pairs from uploaded file' do
    pending 'Waiting for Stefan'
    click_on 'Projects'
    click_on 'Upload strings file'
    attach_file 'project_file', 'spec/fixtures/test.strings'
    click_on 'Upload'
    Project.first.string_pairs.should_not be_empty
  end
end
