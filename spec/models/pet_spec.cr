#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for PetStore::Pet
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PetStore::Pet do
  describe "test an instance of Pet" do
    it "should create an instance of Pet" do
      # instance = PetStore::Pet.new
      # (instance).should be_a(PetStore::Pet)
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'category'" do
    it "list invalid properties from attribute 'category'" do
      category = PetStore::Category.new(name: nil)
      pet = PetStore::Pet.new(name: "pet", photo_urls: Array(String).new)
      pet.valid?.should eq(true)
      pet.list_invalid_properties.empty?.should eq(true)
      expect_raises(Exception, "PetStore::Category is invalid") do
        pet.category = category
      end
      pet2 = PetStore::Pet.new(name: "pet", photo_urls: Array(String).new, category: category)
      pet2.valid?.should eq(false)
      pet2.list_invalid_properties.should eq(["category: \"name\" is required and cannot be null"])
    end
  end

  describe "test attribute 'name'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'photo_urls'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'tags'" do
    it "list invalid properties from attribute 'tags'" do
      tag1 = PetStore::Tag.new(id: -1)
      tag2 = PetStore::Tag.new(name: "test")
      tags = [tag1, tag2]
      pet = PetStore::Pet.new(name: "pet", photo_urls: Array(String).new)
      pet.valid?.should be_true
      pet.list_invalid_properties.empty?.should be_true
      expect_raises(Exception, "PetStore::Tag is invalid") do
        pet.tags = tags
      end
      pet2 = PetStore::Pet.new(name: "pet", photo_urls: Array(String).new, tags: tags)
      pet2.valid?.should be_false
      pet2.list_invalid_properties.should eq([
        "tags: invalid value for \"id\", must be greater than or equal to 0.",
      ])
    end
  end

  describe "test attribute 'status'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # allowable_values = PetStore::Pet::VALID_VALUES_FOR_STATUS
      # allowable_values.each do |value|
      #   instance.status = value.as(String)
      # end
    end
  end
end
