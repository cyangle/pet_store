#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for PetStore::EnumTest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PetStore::EnumTest do
  describe "test an instance of EnumTest" do
    it "should create an instance of EnumTest with default values" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress","outerEnumRquiredInt64":3,"outerEnumDefaultValue":"placed","outerEnumIntegerDefaultValue":0})
      instance = PetStore::EnumTest.new(
        enum_string_required: "lower",
        outer_enum_rquired: PetStore::OuterEnumRquired.new("in_progress")
      )
      (instance.to_json).should eq(json)
      (instance.outer_enum_rquired_int64.not_nil!.data).should eq(3i64)
      (instance.outer_enum_default_value.not_nil!.data).should eq("placed")
      (instance.outer_enum_integer_default_value.not_nil!.data).should eq(0)
    end

    it "should create an instance of EnumTest with default values" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
      json2 = %({"enum_string_required":"lower","outerEnumRquired":"in_progress","outerEnumRquiredInt64":3,"outerEnumDefaultValue":"placed","outerEnumIntegerDefaultValue":0})
      instance = PetStore::EnumTest.from_json(json)
      (instance.to_json).should eq(json2)
      (instance.outer_enum_rquired_int64.not_nil!.data).should eq(3i64)
      (instance.outer_enum_default_value.not_nil!.data).should eq("placed")
      (instance.outer_enum_integer_default_value.not_nil!.data).should eq(0)
    end

    it "should create an instance of EnumTest" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress","outerEnumRquiredInt64":3,"outerEnumDefaultValue":"placed","outerEnumIntegerDefaultValue":0})
      instance = PetStore::EnumTest.from_json(json)
      (instance.to_json).should eq(json)
      (instance).should be_a(PetStore::EnumTest)
      (instance.list_invalid_properties).should be_empty
      (instance.outer_enum_rquired.try &.data).should eq("in_progress")
      (instance.valid?).should be_true
      (instance.outer_enum).should be_nil
      (instance.to_json).should eq(json)
    end
  end

  describe "test attribute 'enum_string'" do
    it "should work" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
      instance = PetStore::EnumTest.from_json(json)
      allowable_values = PetStore::EnumTest::VALID_VALUES_FOR_ENUM_STRING
      allowable_values.each do |value|
        instance.enum_string = value.as(String)
      end
    end

    it "returns false if the value in not valid" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
      instance = PetStore::EnumTest.from_json(json)
      instance.valid?.should be_true
      expect_raises(ArgumentError, /must be one of/) do
        instance.enum_string = "fail"
      end
    end

    it "sets to nil" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress","enum_string":"UPPER"})
      instance = PetStore::EnumTest.from_json(json)
      (instance.enum_string).should eq("UPPER")
      (instance.valid?).should be_true
      instance.enum_string = nil
      (instance.enum_string).should be_nil
      (instance.valid?).should be_true
    end
  end

  describe "test attribute 'enum_string_required'" do
    it "should work" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
      instance = PetStore::EnumTest.from_json(json)
      allowable_values = PetStore::EnumTest::VALID_VALUES_FOR_ENUM_STRING_REQUIRED
      allowable_values.each do |value|
        instance.enum_string_required = value.as(String)
      end
    end
  end

  describe "test attribute 'enum_int32'" do
    it "should work" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
      instance = PetStore::EnumTest.from_json(json)
      allowable_values = PetStore::EnumTest::VALID_VALUES_FOR_ENUM_INT32
      allowable_values.each do |value|
        instance.enum_int32 = value.as(Int32)
      end
    end

    it "sets to nil" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress","enum_int32":1})
      instance = PetStore::EnumTest.from_json(json)
      (instance.enum_int32).should eq(1)
      (instance.valid?).should be_true
      instance.enum_int32 = nil
      (instance.enum_int32).should be_nil
      (instance.valid?).should be_true
    end
  end

  describe "test attribute 'enum_int64'" do
    it "should work" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
      instance = PetStore::EnumTest.from_json(json)
      allowable_values = PetStore::EnumTest::VALID_VALUES_FOR_ENUM_INT64
      allowable_values.each do |value|
        instance.enum_int64 = value.as(Int64)
      end
    end

    it "returns false if the value in not valid" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
      instance = PetStore::EnumTest.from_json(json)
      instance.valid?.should be_true
      expect_raises(ArgumentError, /must be one of/) do
        instance.enum_int64 = 0_i64
      end
    end

    it "sets to nil" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress","enum_int64":-1})
      instance = PetStore::EnumTest.from_json(json)
      (instance.enum_int64).should eq(-1i64)
      (instance.valid?).should be_true
      instance.enum_int64 = nil
      (instance.enum_int64).should be_nil
      (instance.valid?).should be_true
    end
  end

  describe "test attribute 'enum_float'" do
    it "should work" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
      instance = PetStore::EnumTest.from_json(json)
      allowable_values = PetStore::EnumTest::VALID_VALUES_FOR_ENUM_FLOAT
      allowable_values.each do |value|
        instance.enum_float = value.as(Float32)
      end
    end

    it "sets to nil" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress","enum_float":1.1})
      instance = PetStore::EnumTest.from_json(json)
      (instance.enum_float).should eq(1.1f32)
      (instance.valid?).should be_true
      instance.enum_float = nil
      (instance.enum_float).should be_nil
      (instance.valid?).should be_true
    end
  end

  describe "test attribute 'enum_double'" do
    it "should work" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
      instance = PetStore::EnumTest.from_json(json)
      allowable_values = PetStore::EnumTest::VALID_VALUES_FOR_ENUM_DOUBLE
      allowable_values.each do |value|
        instance.enum_double = value.as(Float64)
      end
    end

    it "sets to nil" do
      json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress","enum_double":-1.2})
      instance = PetStore::EnumTest.from_json(json)
      (instance.enum_double).should eq(-1.2)
      (instance.valid?).should be_true
      instance.enum_double = nil
      (instance.enum_double).should be_nil
      (instance.valid?).should be_true
    end
  end

  describe "test attribute 'outer_enum'" do
    it "raises error" do
      expect_raises(JSON::ParseException, /Validation failed/) do
        json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress","outerEnumRquiredInt64":3,"outerEnum":"invalid","outerEnumDefaultValue":"placed","outerEnumIntegerDefaultValue":0})
        PetStore::EnumTest.from_json(json)
      end
    end

    context "sets outer_enum with invalid value" do
      it "raises error" do
        expect_raises(ArgumentError, /must be one of/) do
          json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
          instance = PetStore::EnumTest.from_json(json)
          (instance.outer_enum).should be_nil
          instance.outer_enum = PetStore::OuterEnum.new("invalid")
        end
      end
    end

    context "sets outer_enum to valid values" do
      PetStore::OuterEnum::VALID_VALUES.each do |value|
        it "sets the value to #{value}" do
          json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress"})
          instance = PetStore::EnumTest.from_json(json)
          (instance.outer_enum).should be_nil
          (instance.valid?).should be_true
          instance.outer_enum = PetStore::OuterEnum.new(value.as(String))
          (instance.valid?).should be_true
        end
      end
    end

    context "sets outer_enum to nil" do
      it "sets the value to nil" do
        json = %({"enum_string_required":"lower","outerEnumRquired":"in_progress","outerEnum":"placed"})
        instance = PetStore::EnumTest.from_json(json)
        (instance.outer_enum.not_nil!.data).should eq("placed")
        instance.outer_enum = nil
        (instance.outer_enum).should be_nil
      end
    end
  end

  describe "test attribute 'outer_enum_integer'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'outer_enum_default_value'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'outer_enum_integer_default_value'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
