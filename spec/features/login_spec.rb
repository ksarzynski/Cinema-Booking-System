require "rails_helper"

RSpec.feature "Login", :type => :feature do
  let(:user) { create(:user) }

  scenario 'user navigates to the login page and succesfully logs in', js: true do
    user
    visit root_path
    find(:xpath, "/html/body/nav/div/div[2]/ul/li[2]/a").click
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    find(:xpath, "/html/body/div/form/div[4]/input").click
    expect(page).to have_content("Signed in successfully.")
end

end
