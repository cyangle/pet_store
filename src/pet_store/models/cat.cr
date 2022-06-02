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
  class Cat
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties
    @[JSON::Field(key: "className", type: String)]
    property class_name : String

    # Optional properties
    @[JSON::Field(key: "declawed", type: Bool?, presence: true, ignore_serialize: declawed.nil? && !declawed_present?)]
    property declawed : Bool?

    @[JSON::Field(ignore: true)]
    property? declawed_present : Bool = false

    @[JSON::Field(key: "color", type: String?, default: "red", presence: true, ignore_serialize: color.nil? && !color_present?)]
    property color : String?

    @[JSON::Field(ignore: true)]
    property? color_present : Bool = false

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
        PetStore::Animal,
        PetStore::CatAllOf,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @class_name : String, @declawed : Bool? = nil, @color : String? = "red")
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        declawed == o.declawed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@declawed)
  end
end
