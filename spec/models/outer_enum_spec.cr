#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for PetStore::OuterEnum
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PetStore::OuterEnum do
  describe "test an instance of OuterEnum" do
    describe ".new" do
      context "with invalid value" do
        it "should create an instance of OuterEnum" do
          instance = PetStore::OuterEnum.new("invalid")
          (instance).should be_a(PetStore::OuterEnum)
          (instance.data).should eq("invalid")
          (instance.valid?).should be_false
        end
      end

      context "with valid values" do
        PetStore::OuterEnum::VALID_VALUES.each do |value|
          it "creats an instance with value #{value}" do
            instance = PetStore::OuterEnum.new(value.as(String))
            (instance).should be_a(PetStore::OuterEnum)
            (instance.data).should eq(value.as(String))
            (instance.valid?).should be_true
          end
        end
      end
    end

    describe ".new!" do
      context "with invalid value" do
        it "raises error" do
          expect_raises(ArgumentError, /must be one of/) do
            PetStore::OuterEnum.new!("invalid")
          end
        end
      end

      context "with valid values" do
        PetStore::OuterEnum::VALID_VALUES.each do |value|
          it "creats an instance with value #{value}" do
            instance = PetStore::OuterEnum.new!(value.as(String))
            (instance).should be_a(PetStore::OuterEnum)
            (instance.data).should eq(value.as(String))
            (instance.valid?).should be_true
          end
        end
      end
    end
  end
end
