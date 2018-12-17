feature "user can visit site & see content" do

  scenario "user can see header" do
    visit "/"
    expect(page).to have_content("Welcome to MSNGR")
  end

  scenario "user can see a form" do
    visit "/"
    expect(page).to find_field("MSGS").value
  end
end
