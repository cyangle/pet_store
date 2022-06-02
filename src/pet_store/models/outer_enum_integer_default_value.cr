#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module PetStore
  class OuterEnumIntegerDefaultValue
    N0 = "0"

    N1 = "1"

    N2 = "2"

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      case value
      when "0"
        N0
      when "1"
        N1
      when "2"
        N2
      else
        raise "Invalid ENUM value #{value} for class #OuterEnumIntegerDefaultValue"
      end
    end
  end
end
