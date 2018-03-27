require "rails_helper"

describe "A user can see a student's page" do
  context "when the user visits a specific students page" do
    it "shows only that students information" do
      student = Student.create!(name: "Alex")
      visit "/students/#{student.id}"

      expect(page).to have_content(student.name)
    end
  end
end
