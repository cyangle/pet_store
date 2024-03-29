#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

# Unit tests for PetStore::Parent
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/pet_store/models/parent"

describe PetStore::Parent do
  describe "test an instance of Parent" do
    it "should create an instance of Parent" do
      # instance = PetStore::Parent.new
      # (instance).should be_a(PetStore::Parent)
    end
  end

  describe "test attribute 'kids'" do
    it "should work" do
      kids = [
        PetStore::Child.new,
        1,
        2,
        PetStore::Child.new(name: "Tom"),
        3,
        PetStore::Child.new,
        4,
        PetStore::Child.new(name: "Jim"),
        PetStore::Child.new(name: "Jerry"),
      ]
      parent = PetStore::Parent.new(kids: kids)
      parent2 = PetStore::Parent.from_json(parent.to_json)
      (parent).should eq(parent2)
      (parent.to_json).should eq(parent2.to_json)
      (parent.hash).should eq(parent2.hash)
    end
  end
end
