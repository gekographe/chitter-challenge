feature "Sign in" do

  scenario "I want to be able to sign in" do
    signing_up
    signing_in
    expect(page).to have_content 'Welcome back me@me.com, you just signed in'
  end
end
