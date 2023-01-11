#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

# Unit tests for PetStore::FormatTest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/pet_store/models/format_test"

describe PetStore::FormatTest do
  describe "test an instance of FormatTest" do
    it "should create an instance of FormatTest" do
      # instance = PetStore::FormatTest.new
      # (instance).should be_a(PetStore::FormatTest)
    end
  end

  describe "test attribute 'integer'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'int32'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'int64'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'number'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'float'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'double'" do
    it "should work" do
      instance = PetStore::FormatTest.new(
        number: 100.0_f64,
        byte: "test",
        date: Time.local,
        password: "0123456789"
      )
      instance.valid?.should be_true
      expect_raises(ArgumentError, /must be greater than or equal to/) do
        instance.double = 0.0
      end
      expect_raises(ArgumentError, /must be smaller than or equal to/) do
        instance.double = 200.0
      end
    end
  end

  describe "test attribute 'string'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'byte'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'binary'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'date'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'date_time'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'uuid'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'password'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'pattern_with_digits'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'pattern_with_digits_and_delimiter'" do
    it "should work" do
      # instance = PetStore::FormatTest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
