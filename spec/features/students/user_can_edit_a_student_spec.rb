describe "rails_helper"

describe "User visits edit page" do
  describe "user fills in form for student" do
    it "updates that students information" do
      student = Student.new(name: "Alex")
      student_2 = Student.new(name: "Jimmy")

      visit edit_student_path(student)

      fill_in "Name", with: "Batman"
      click_on "Edit Student"

      expect(current_path).to eq("/students/#{student.id}")
      expect(page).to have_content("Batman")
    end
  end
end
