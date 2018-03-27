require "rails_helper"

describe "User can create a new address" do
  describe "user goes to student page" do
    it "can create a new address" do
      student_1 = Student.create(name: "Alex")

      visit student_path(student_1)
      click_on "New Address"

      fill_in "Description", with: "Home Address"
      fill_in "Street", with: "123 Main Street"
      fill_in "City", with: "Denver"
      fill_in "State", with: "Colorado"
      fill_in "Zip code", with: "55011"
      click_on "Create Address"

      expect(current_path).to eq("/students/#{student_1.id}")
      expect(page).to have_content("Home Address")
      expect(page).to have_content("123 Main Street")
      expect(page).to have_content("Denver")
      expect(page).to have_content("Colorado")
      expect(page).to have_content("55011")

    end
  end
end
