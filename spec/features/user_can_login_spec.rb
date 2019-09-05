require 'rails_helper'
require 'feature_test_helper'

RSpec.feature "Log in", type: :feature do
  let(:first_name) { 'Ruby' }
  let(:surname) { 'Rails' }
  let(:email) { 'ruby_rails@gmail.com' }
  let(:password) { '123' }

  scenario "User can view login page" do
    visit "/login"
    expect(page).to have_selector("input[type=submit][value='Log in']")
  end

  scenario "User can login" do
    sign_up
    fill_in('session[email]', with: email)
    fill_in('session[password]', with: password)
    click_button('Log in')
    expect(page).to have_content first_name
  end

  scenario "login with invalid information" do
    sign_up
    expect(page).to have_selector("input[type=submit][value='Log in']")
    fill_in('session[email]', with: email)
    fill_in('session[password]', with: 'invalid password')
    click_button('Log in')
    expect(page).to have_content 'Invalid credentials'
  end
end