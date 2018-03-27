require "rails_helper"

describe "User visits new student page" do
  describe "User fills in create a new student form" do
    it "creates a new user" do
      visit '/students/new'

      fill_in "Name", with: "Alex"
      click_on "Create Student"

      expect(current_path).to eq("/students/1")
      expect(page).to have_content("Alex")
    end
  end
end
