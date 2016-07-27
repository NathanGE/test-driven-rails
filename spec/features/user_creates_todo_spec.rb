require "rails_helper"

feature "user creates todo" do
  scenario "successfully" do
    visit root_path
    
    click_on "Add a new todo"
    fill_in "Title", with: "Buy beer"
    click_on "Submit"

    expect(page).to have_css ".todos li", text: "Buy beer"
  end
end
