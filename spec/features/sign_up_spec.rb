feature "Sign Up" do

  scenario "I want to be able to sign up" do
    visit '/sign_up'
    fill_in :email, with: 'me@me.com'
    fill_in :password, with: '12345678'
    fill_in :password_comfirmation, with: '12345678'
    expect(page).to have_content "Welcome to Chitter me@me.com"
  end

end
