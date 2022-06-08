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
  class AdditionalPropertiesClass
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "map_property", type: Hash(String, String)?, default: nil, presence: true, ignore_serialize: map_property.nil? && !map_property_present?)]
    getter map_property : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? map_property_present : Bool = false

    @[JSON::Field(key: "map_of_map_property", type: Hash(String, Hash(String, String))?, default: nil, presence: true, ignore_serialize: map_of_map_property.nil? && !map_of_map_property_present?)]
    getter map_of_map_property : Hash(String, Hash(String, String))? = nil

    @[JSON::Field(ignore: true)]
    property? map_of_map_property_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @map_property : Hash(String, String)? = nil,
      @map_of_map_property : Hash(String, Hash(String, String))? = nil
    )
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] map_property Object to be assigned
    def map_property=(map_property : Hash(String, String)?)
      if map_property.nil?
        @map_property_present = false
        return @map_property = nil
      end
      @map_property = map_property
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] map_of_map_property Object to be assigned
    def map_of_map_property=(map_of_map_property : Hash(String, Hash(String, String))?)
      if map_of_map_property.nil?
        @map_of_map_property_present = false
        return @map_of_map_property = nil
      end
      @map_of_map_property = map_of_map_property
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
    def_equals_and_hash(@map_property, @map_property_present, @map_of_map_property, @map_of_map_property_present)
  end
end
