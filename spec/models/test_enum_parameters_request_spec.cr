#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for PetStore::TestEnumParametersRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe PetStore::TestEnumParametersRequest do
  describe "test an instance of TestEnumParametersRequest" do
    it "should create an instance of TestEnumParametersRequest" do
      # instance = PetStore::TestEnumParametersRequest.new
      # (instance).should be_a(PetStore::TestEnumParametersRequest)
    end
  end

  describe "test attribute 'enum_form_string_array'" do
    it "should work" do
      # instance = PetStore::TestEnumParametersRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = PetStore::TestEnumParametersRequest::ENUM_VALIDATOR_FOR_ENUM_FORM_STRING_ARRAY
      # validator.allowable_values.each do |value|
      #   instance.enum_form_string_array = value.as(Array(String))
      # end
    end
  end

  describe "test attribute 'enum_form_string'" do
    it "should work" do
      # instance = PetStore::TestEnumParametersRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = PetStore::TestEnumParametersRequest::ENUM_VALIDATOR_FOR_ENUM_FORM_STRING
      # validator.allowable_values.each do |value|
      #   instance.enum_form_string = value.as(String)
      # end
    end
  end
end