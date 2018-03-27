require "rails_helper"

describe "User visits an index page" do
  it "shows a list of students" do
    student_1 = Student.new(name: "Alex")
    student_2 = Student.new(name: "Jimmy")
    student_3 = Student.new(name: "Megan")
    visit '/students'

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_3.name)
  end
end
