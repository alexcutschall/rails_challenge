describe "rails_helper"

describe "User visits edit page" do
  describe "user fills in form for student" do
    it "updates that students information" do
      student = Student.create!(name: "Alex")
      student_2 = Student.create!(name: "Jimmy")

      visit "/students/#{student.id}"
      click_on "Edit"
      
      fill_in "Name", with: "Batman"
      click_on "Update Student"

      expect(current_path).to eq("/students/#{student.id}")
      expect(page).to have_content("Batman")
    end
  end
end
