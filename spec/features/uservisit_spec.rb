feature "user can visit site & see content" do
  scenario "user can see header" do
    visit("/")
    expect(page).to have_content("Welcome to MSNGR")
  end

  scenario 'user can fill in a form and submit' do
    visit_page_and_submit
    expect(page).to have_content("carol")
  end

  scenario "messages can be stored" do
    visit "/"
    fill_in 'msg_title', with: "carol"
    fill_in "user_message", with: "cheese"
    click_button('submit')
    expect(page).to have_content("carol\ncheese")

  end
end
