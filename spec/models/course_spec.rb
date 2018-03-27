require "rails_helper"

describe Course do
  describe "validations" do
    it "should have be invalid without name" do
      course = Course.create

      expect(course).to be_invalid
    end
  describe "relationships" do
    it "should have many students" do
      student = Student.create(name: "Alex")

      expect(student).to respond_to(:students)
    end
  end 
  end
end
