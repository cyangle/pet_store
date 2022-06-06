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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class CatAllOf
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "name", type: String)]
    getter name : String

    # Optional properties

    @[JSON::Field(key: "declawed", type: Bool?, presence: true, ignore_serialize: declawed.nil? && !declawed_present?)]
    property declawed : Bool?

    @[JSON::Field(ignore: true)]
    property? declawed_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String,
      # Optional properties
      @declawed : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @name.to_s.size > 255
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 255.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.to_s.size > 255

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.to_s.size > 255
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 255.")
      end

      @name = name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@name, @declawed, @declawed_present)
  end
end
