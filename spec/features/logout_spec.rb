require "rails_helper"

RSpec.feature "Logout", :type => :feature do
  let(:user) { create(:user) }

  scenario 'user succesfully logout', js: true do
    sign_in user
    visit root_path
    find(:xpath, "/html/body/nav/div/div[2]/ul/li[5]/a").click
    expect(page).to have_content("Signed out successfully.")
  end
end
