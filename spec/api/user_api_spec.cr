#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for PetStore::UserApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "UserApi" do
  describe "test an instance of UserApi" do
    it "should create an instance of UserApi" do
      api_instance = PetStore::UserApi.new
      api_instance.should be_a(PetStore::UserApi)
    end
  end

  # unit tests for create_user
  # Create user
  # This can only be done by the logged in user.
  # @param user Created user object
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "create_user test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for create_users_with_array_input
  # Creates list of users with given input array
  #
  # @param user List of user object
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "create_users_with_array_input test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for create_users_with_list_input
  # Creates list of users with given input array
  #
  # @param user List of user object
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "create_users_with_list_input test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_user
  # Delete user
  # This can only be done by the logged in user.
  # @param username The name that needs to be deleted
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_user test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_user_by_name
  # Get user by user name
  #
  # @param username The name that needs to be fetched. Use user1 for testing.
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe "get_user_by_name test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for login_user
  # Logs user into the system
  #
  # @param username The user name for login
  # @param password The password for login in clear text
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe "login_user test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for logout_user
  # Logs out current logged in user session
  #
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "logout_user test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for update_user
  # Updated user
  # This can only be done by the logged in user.
  # @param username name that need to be deleted
  # @param user Updated user object
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "update_user test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
