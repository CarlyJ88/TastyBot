def sign_up
  visit "/users/new"
  fill_in('user[first_name]', with: first_name)
  fill_in('user[surname]', with: surname)
  fill_in('user[email]', with: email)
  fill_in('user[password]', with: password)
  click_button('Signup')
end
