#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./animal"

module PetStore
  class Dog
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # This is the name of the class
    @[JSON::Field(key: "className", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter class_name : String? = nil
    MAX_LENGTH_FOR_CLASS_NAME = 64

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "breed", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter breed : String? = nil

    # The color of the pet
    @[JSON::Field(key: "color", type: String?, default: "red", required: false, nullable: false, emit_null: false)]
    getter color : String? = "red"

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @class_name : String? = nil,
      # Optional properties
      @breed : String? = nil,
      @color : String? = "red"
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"class_name\" is required and cannot be null") if @class_name.nil?

      unless (_class_name = @class_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("class_name", _class_name.to_s.size, MAX_LENGTH_FOR_CLASS_NAME)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @class_name.nil?
      unless (_class_name = @class_name).nil?
        return false if _class_name.to_s.size > MAX_LENGTH_FOR_CLASS_NAME
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_name Object to be assigned
    def class_name=(new_value : String?)
      raise ArgumentError.new("\"class_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("class_name", new_value.to_s.size, MAX_LENGTH_FOR_CLASS_NAME)
      end

      @class_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] breed Object to be assigned
    def breed=(new_value : String?)
      @breed = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] color Object to be assigned
    def color=(new_value : String?)
      @color = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@class_name, @breed, @color)
  end
end
