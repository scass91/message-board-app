def visit_page_and_submit
  visit("/")
  fill_in 'msg_title', with: "carol"
  click_button('submit')
end
