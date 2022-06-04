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
  class Dog
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties
    @[JSON::Field(key: "className", type: String)]
    getter class_name : String

    # Optional properties
    @[JSON::Field(key: "breed", type: String?, presence: true, ignore_serialize: breed.nil? && !breed_present?)]
    property breed : String?

    @[JSON::Field(ignore: true)]
    property? breed_present : Bool = false

    @[JSON::Field(key: "color", type: String?, default: "red", presence: true, ignore_serialize: color.nil? && !color_present?)]
    property color : String?

    @[JSON::Field(ignore: true)]
    property? color_present : Bool = false

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
        PetStore::Animal,
        PetStore::DogAllOf,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @class_name : String, @breed : String? = nil, @color : String? = "red")
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @class_name.to_s.size > 64
        invalid_properties.push("invalid value for \"class_name\", the character length must be smaller than or equal to 64.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_name.to_s.size > 64

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] class_name Value to be assigned
    def class_name=(class_name)
      if class_name.to_s.size > 64
        raise ArgumentError.new("invalid value for \"class_name\", the character length must be smaller than or equal to 64.")
      end

      @class_name = class_name
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
    def_equals_and_hash(@class_name, @breed, @color)
  end
end
