#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for PetStore::Fruit
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PetStore::Fruit do
  describe ".openapi_one_of" do
    it "lists the items referenced in the oneOf array" do
      expect(described_class.openapi_one_of).to_not be_empty
    end
  end

  describe ".build" do
    it "returns the correct model" do
    end
  end
end
