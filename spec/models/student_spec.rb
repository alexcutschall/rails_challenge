require "rails_helper"

describe Student do
  describe "validations" do
    it "should be invalid without a name" do
      student = Student.new

      expect(student).to be_invalid
    end 
  end
end
