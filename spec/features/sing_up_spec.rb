require "rails_helper"

RSpec.feature "Sign up", :type => :feature do
  let(:user) {build (:user)}

  scenario 'user navigates to sign up page and sucessfully signs up', js: true do
    visit root_path
    find(:xpath, "/html/body/nav/div/div[2]/ul/li[1]/a").click
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    fill_in 'user_password_confirmation', with: user.password
    find(:xpath, "/html/body/div/form/div[4]/input").click
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end
