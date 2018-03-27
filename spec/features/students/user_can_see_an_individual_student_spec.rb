require "rails_helper"

describe "A user can see a student's page" do
  context "when the user visits a specific students page" do
    it "shows only that students information" do
      student = Student.create!(name: "Alex")
      visit "/students/#{student.id}"

      expect(page).to have_content(student.name)
    end
    context "user can see all that student's addresses" do
      it "the student's information" do
        student = Student.create!(name: "Alex")
        student_2 = Student.create!(name: "Jimmy")
        address = student.addresses.create(description: "Awesome",
                              street: "123",
                              city: "Denver",
                              state: "CO",
                              zip_code: "55011")
        visit "/students/#{student.id}"

        expect(page).to have_content(address.description)
        expect(page).to have_content(address.street)
        expect(page).to have_content(address.city)
        expect(page).to have_content(address.state)
        expect(page).to have_content(address.zip_code)
      end
    end 
  end
end
