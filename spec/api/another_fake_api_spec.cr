#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for PetStore::AnotherFakeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "AnotherFakeApi" do
  describe "test an instance of AnotherFakeApi" do
    it "should create an instance of AnotherFakeApi" do
      api_instance = PetStore::AnotherFakeApi.new
      api_instance.should be_a(PetStore::AnotherFakeApi)
    end
  end

  # unit tests for call_123_test_special_tags
  # To test special tags
  # To test special tags and operation ID starting with number
  # @param client client model
  # @param [Hash] opts the optional parameters
  # @return [Client]
  describe "call_123_test_special_tags test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
