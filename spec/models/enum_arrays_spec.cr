#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for PetStore::EnumArrays
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PetStore::EnumArrays do
  describe "test an instance of EnumArrays" do
    it "should create an instance of EnumArrays" do
      instance = PetStore::EnumArrays.new
      (instance).should be_a(PetStore::EnumArrays)
    end
  end

  describe "test attribute 'just_symbol'" do
    it "should work" do
      instance = PetStore::EnumArrays.new
      validator = PetStore::EnumArrays::ENUM_VALIDATOR_FOR_JUST_SYMBOL
      validator.allowable_values.each do |value|
        instance.just_symbol = value.as(String)
      end
    end

    context "invalid" do
      it "is not a valid instance" do
        instance = PetStore::EnumArrays.new(just_symbol: "invalid")
        (instance.valid?).should be_false
      end
    end

    context "set to invalid value" do
      it "raises error" do
        expect_raises(ArgumentError, /must be one of/) do
          instance = PetStore::EnumArrays.new(just_symbol: ">=")
          (instance.valid?).should be_true
          instance.just_symbol = "invalid"
          (instance.valid?).should be_false
        end
      end
    end

    context "sets to nil" do
      it "sets the value" do
        instance = PetStore::EnumArrays.new(just_symbol: ">=")
        (instance.valid?).should be_true
        instance.just_symbol = nil
        (instance.valid?).should be_true
      end
    end
  end

  describe "test attribute 'array_enum'" do
    it "should work" do
      instance = PetStore::EnumArrays.new
      validator = PetStore::EnumArrays::ENUM_VALIDATOR_FOR_ARRAY_ENUM
      validator.allowable_values.each do |value|
        instance.array_enum = [value.as(String)]
      end
    end

    context "invalid" do
      it "is not a valid instance" do
        instance = PetStore::EnumArrays.new(array_enum: ["invalid"])
        (instance.valid?).should be_false
      end
    end

    context "set to invalid value" do
      it "raises error" do
        expect_raises(ArgumentError, /must be one of/) do
          instance = PetStore::EnumArrays.new(array_enum: ["fish"])
          (instance.valid?).should be_true
          instance.array_enum = ["invalid"]
          (instance.valid?).should be_false
        end
      end
    end

    context "sets to nil" do
      it "sets the value" do
        instance = PetStore::EnumArrays.new(array_enum: ["fish"])
        (instance.valid?).should be_true
        instance.array_enum = nil
        (instance.valid?).should be_true
      end
    end

    context "sets to empty array" do
      it "sets the value" do
        instance = PetStore::EnumArrays.new(array_enum: ["fish"])
        (instance.valid?).should be_true
        instance.array_enum = Array(String).new
        (instance.valid?).should be_true
      end
    end

    context "multiple values" do
      context "all valid" do
        it "sets the value" do
          instance = PetStore::EnumArrays.new(array_enum: ["fish"])
          (instance.valid?).should be_true
          instance.array_enum = ["fish", "crab", "fish", "crab", "fish"]
          (instance.valid?).should be_true
        end
      end

      context "one invalid" do
        it "raises error" do
          expect_raises(ArgumentError, /must be one of/) do
            instance = PetStore::EnumArrays.new(array_enum: ["fish"])
            (instance.valid?).should be_true
            instance.array_enum = ["fish", "crab", "fish", "invalid", "fish"]
            (instance.valid?).should be_false
          end
        end
      end

      context "all invalid" do
        it "raises error" do
          expect_raises(ArgumentError, /must be one of/) do
            instance = PetStore::EnumArrays.new(array_enum: ["fish"])
            (instance.valid?).should be_true
            instance.array_enum = ["fish1", "crab1", "fish2", "invalid", "fish1"]
            (instance.valid?).should be_false
          end
        end
      end
    end
  end
end
