require "rails_helper"

RSpec.feature "Add Customer", :type => :feature do
  let(:user) { create(:user) }

  scenario 'user navigates to the new customer form and create new customer', js: true do
    sign_in user
    visit '/customers/new'
    fill_in 'First name', with: 'Kamil'
    fill_in 'Second name', with: 'Tester'
    fill_in 'Email', with: Faker::Internet.safe_email
    click_button 'Create Customer'
    expect(page).to have_content("Customer was successfully created.")
  end
end
