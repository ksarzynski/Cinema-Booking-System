require "rails_helper"

RSpec.feature "Sign up", :type => :feature do

  scenario 'user navigates to sign up page and sucessfully signs up', js: true do
    visit root_path
    find(:xpath, "/html/body/nav/div/div[2]/ul/li[1]/a").click
    fill_in 'user_email', with: Faker::Internet.safe_email
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    find(:xpath, "/html/body/div/form/div[4]/input").click
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end
