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
  class ArrayTest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "array_of_string", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter array_of_string : Array(String)? = nil

    @[JSON::Field(key: "array_array_of_integer", type: Array(Array(Int64))?, default: nil, required: false, nullable: false, emit_null: false)]
    getter array_array_of_integer : Array(Array(Int64))? = nil

    @[JSON::Field(key: "array_array_of_model", type: Array(Array(ReadOnlyFirst))?, default: nil, required: false, nullable: false, emit_null: false)]
    getter array_array_of_model : Array(Array(ReadOnlyFirst))? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @array_of_string : Array(String)? = nil,
      @array_array_of_integer : Array(Array(Int64))? = nil,
      @array_array_of_model : Array(Array(ReadOnlyFirst))? = nil
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
    # @param [Object] array_of_string Object to be assigned
    def array_of_string=(array_of_string : Array(String)?)
      if array_of_string.nil?
        return @array_of_string = nil
      end
      @array_of_string = array_of_string
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] array_array_of_integer Object to be assigned
    def array_array_of_integer=(array_array_of_integer : Array(Array(Int64))?)
      if array_array_of_integer.nil?
        return @array_array_of_integer = nil
      end
      @array_array_of_integer = array_array_of_integer
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] array_array_of_model Object to be assigned
    def array_array_of_model=(array_array_of_model : Array(Array(ReadOnlyFirst))?)
      if array_array_of_model.nil?
        return @array_array_of_model = nil
      end
      @array_array_of_model = array_array_of_model
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
