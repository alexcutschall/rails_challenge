require "rails_helper"

describe "User can navigate with a nav bar" do
  describe "user wants to visit the students index" do
    it "should send them to the index" do
    student_1 = Student.create!(name: "Alex")
    student_2 = Student.create!(name: "Jimmy")

    visit "/students/#{student_1.id}/edit"

    within("#navigation") do
      click_on "All Students"
    end

    expect(current_path).to eq("/students")
    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
  end
    it "should send them to the creation page" do
    student_1 = Student.new(name: "Alex")
    student_1 = Student.new(name: "Jimmy")

    visit "/students/#{student_1.id}"

    within("#navigation") do
      click_on "Create a New Student"
    end

    expect(current_path).to eq("/students/new")
    end
  end
end
