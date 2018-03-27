require "rails_helper"

describe Student do
  describe "validations" do
    it "should be invalid without a name" do
      student = Student.new

      expect(student).to be_invalid
    end
  end
  describe "relationships" do
    it "should have many addresses" do
      student = Student.create!(name: "Alex")

      expect(student).to respond_to(:addresses)
    end
    it "should have many courses" do
      student = Student.create!(name: "Alex")

      expect(student).to respond_to(:courses)
    end 
  end
end
