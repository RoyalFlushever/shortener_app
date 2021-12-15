require 'rails_helper'

RSpec.feature "Links", type: :feature do
  before(:each) do
    visit root_path
  end

  context "Add new link" do
    scenario "should be successful" do
      fill_in "Link URL", with: "https://example.com"
      click_button "Add link"
      expect(page).to have_content("Your link")
    end

    scenario "empty url string provided" do
      click_button "Add link"
      expect(page).to have_content("Url can't be blank")
    end

    scenario "url invalid format" do
      fill_in "Link URL", with: "example.com"
      click_button "Add link"
      expect(page).to have_content("Url is invalid")
    end
  end
end
