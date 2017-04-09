feature "Sign Up" do

  scenario "I want to be able to sign up" do
    signing_up
    expect(page).to have_content "Welcome to Chitter me@me.com"
  end

end
