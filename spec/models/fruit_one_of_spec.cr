#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for PetStore::FruitOneOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PetStore::FruitOneOf do
  context "json is AppleOneOf" do
    it "deserializes to AppleOneOf" do
      apple_one_of = PetStore::AppleOneOf.new(kind: "fuji")
      fruit_one_of = PetStore::FruitOneOf.from_json(apple_one_of.to_json)
      (fruit_one_of.is_a?(PetStore::AppleOneOf)).should be_true
    end
  end

  context "json is BananaOneOf" do
    it "deserializes to BananaOneOf" do
      banana_one_of = PetStore::BananaOneOf.new(count: 11.2)
      fruit_one_of = PetStore::FruitOneOf.from_json(banana_one_of.to_json)
      (fruit_one_of.is_a?(PetStore::BananaOneOf)).should be_true
    end
  end
end
