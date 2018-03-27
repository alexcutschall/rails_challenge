require "rails_helper"

describe Address do
  describe "validations" do
    it "is invalid without description" do
      student = Student.create(name: "Alex")
      address = Address.new(
                            street: "123",
                            city: "Denver",
                            state: "CO",
                            zip_code: "55011")
    end
    it "is invalid without street" do
      student = Student.create(name: "Alex")
      address = Address.new(description: "Home Address",

                            city: "Denver",
                            state: "CO",
                            zip_code: "55011")
    end
    it "is invalid without city" do
      student = Student.create(name: "Alex")
      address = Address.new(description: "Home Address",
                            street: "123",

                            state: "CO",
                            zip_code: "55011")
    end
    it "is invalid without state" do
      student = Student.create(name: "Alex")
      address = Address.new(description: "Home Address",
                            street: "123",
                            city: "Denver",

                            zip_code: "55011")
    end
    it "is invalid without zip_code" do
      student = Student.create(name: "Alex")
      address = Address.new(description: "Home Address",
                            street: "123",
                            city: "Denver",
                            state: "CO",
                            )
    end
  end
end
