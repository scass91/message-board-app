feature "user can visit site & see content" do
  scenario "user can see header" do
    visit("/")
    expect(page).to have_content("Welcome to MSNGR")
  end

  scenario 'user can fill in a form and submit' do 
    visit("/")
    fill_in 'msg_name', with: "carol" 
    click_button('submit')
    expect(page).to have_content("carol")
  end
end

