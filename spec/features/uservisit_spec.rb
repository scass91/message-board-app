feature "user can visit site & see content" do
  scenario "user can see header" do
    visit "/"
    expect(page).to have_content("Welcome to MSNGR")
  end
end
