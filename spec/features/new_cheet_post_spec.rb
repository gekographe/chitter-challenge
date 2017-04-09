feature "Post on Chitter" do

  scenario "I wan to be able to post something" do
    sign_up
    sign_in
    visit '/post/new'
    fill_in :message, with: "This is my first message!"
    click_button "Post"
    expect(page).to have_content "this is my first message!"
  end
end
