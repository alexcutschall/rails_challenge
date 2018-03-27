require "rails_helper"

describe "User deletes a student" do
  describe "user visits the students show page" do
    it "deletes a user once clicked" do
      student_1 = Student.create!(name: "Alex")
      student_2 = Student.create!(name: "Jimmy")

      visit "/students/#{student_1.id}"
      click_on "Delete"
      
      expect(current_path).to eq("/students")
      expect(page).to have_content(student_2.name)
    end
  end
end
