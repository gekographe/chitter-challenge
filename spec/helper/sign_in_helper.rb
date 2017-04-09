def signing_up
  visit '/sign_up'
  fill_in :email, with: 'me@me.com'
  fill_in :password, with: '12345678'
  fill_in :password_comfirmation, with: '12345678'
  click_button 'Sign up'
end

def signing_in
  visit '/session/new'
  fill_in :email, with: 'me@me.com'
  fill_in :password, with: '12345678'
  click_button 'Sign in'
end
