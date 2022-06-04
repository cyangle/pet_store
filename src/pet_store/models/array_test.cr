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
  class ArrayTest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    @[JSON::Field(key: "array_of_string", type: Array(String)?, presence: true, ignore_serialize: array_of_string.nil? && !array_of_string_present?)]
    property array_of_string : Array(String)?

    @[JSON::Field(ignore: true)]
    property? array_of_string_present : Bool = false

    @[JSON::Field(key: "array_array_of_integer", type: Array(Array(Int64))?, presence: true, ignore_serialize: array_array_of_integer.nil? && !array_array_of_integer_present?)]
    property array_array_of_integer : Array(Array(Int64))?

    @[JSON::Field(ignore: true)]
    property? array_array_of_integer_present : Bool = false

    @[JSON::Field(key: "array_array_of_model", type: Array(Array(ReadOnlyFirst))?, presence: true, ignore_serialize: array_array_of_model.nil? && !array_array_of_model_present?)]
    property array_array_of_model : Array(Array(ReadOnlyFirst))?

    @[JSON::Field(ignore: true)]
    property? array_array_of_model_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @array_of_string : Array(String)? = nil, @array_array_of_integer : Array(Array(Int64))? = nil, @array_array_of_model : Array(Array(ReadOnlyFirst))? = nil)
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

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@array_of_string, @array_array_of_integer, @array_array_of_model)
  end
end
