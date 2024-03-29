#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./read_only_first"

module PetStore
  class ArrayTest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "array_of_string", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter array_of_string : Array(String)? = nil
    MAX_ITEMS_FOR_ARRAY_OF_STRING = 10
    MIN_ITEMS_FOR_ARRAY_OF_STRING =  1

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_array_of_string = @array_of_string).nil?
        if max_items_error = OpenApi::PrimitiveValidator.max_items_error("array_of_string", _array_of_string.size, MAX_ITEMS_FOR_ARRAY_OF_STRING)
          invalid_properties.push(max_items_error)
        end

        if min_items_error = OpenApi::PrimitiveValidator.min_items_error("array_of_string", _array_of_string.size, MIN_ITEMS_FOR_ARRAY_OF_STRING)
          invalid_properties.push(min_items_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_array_of_string = @array_of_string).nil?
        return false if _array_of_string.size > MAX_ITEMS_FOR_ARRAY_OF_STRING
        return false if _array_of_string.size < MIN_ITEMS_FOR_ARRAY_OF_STRING
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] array_of_string Object to be assigned
    def array_of_string=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_items("array_of_string", new_value.size, MAX_ITEMS_FOR_ARRAY_OF_STRING)
        OpenApi::PrimitiveValidator.validate_min_items("array_of_string", new_value.size, MIN_ITEMS_FOR_ARRAY_OF_STRING)
      end

      @array_of_string = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] array_array_of_integer Object to be assigned
    def array_array_of_integer=(new_value : Array(Array(Int64))?)
      @array_array_of_integer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] array_array_of_model Object to be assigned
    def array_array_of_model=(new_value : Array(Array(ReadOnlyFirst))?)
      @array_array_of_model = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@array_of_string, @array_array_of_integer, @array_array_of_model)
  end
end
