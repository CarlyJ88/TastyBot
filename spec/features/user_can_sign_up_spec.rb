require 'rails_helper'

RSpec.feature "Sign-up", type: :feature do
  let(:first_name) { 'Ruby' }
  let(:surname) { 'Rails' }
  let(:email) { 'ruby_rails@gmail.com' }
  let(:password) { '123' }

  scenario "visit sign up page" do
    visit "/users/new"
    expect(page).to have_content("Signup")
  end

  scenario "can sign up" do
    visit "/users/new"
    fill_in('user[first_name]', with: first_name)
    fill_in('user[surname]', with: surname)
    fill_in('user[email]', with: email)
    fill_in('user[password]', with: password)
    click_button('Signup')
    expect(page).to have_content("Login")
  end
end