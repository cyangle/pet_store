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
  class ArrayOfArrayOfNumberOnly
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties
    @[JSON::Field(key: "ArrayArrayNumber", type: Array(Array(Float64))?, presence: true, ignore_serialize: array_array_number.nil? && !array_array_number_present?)]
    property array_array_number : Array(Array(Float64))?

    @[JSON::Field(ignore: true)]
    property? array_array_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @array_array_number : Array(Array(Float64))? = nil)
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
        array_array_number == o.array_array_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [UInt64] Hash code
    def_hash(@array_array_number)
  end
end
