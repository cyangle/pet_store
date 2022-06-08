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
  class Whale
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "className", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter class_name : String? = nil

    # Optional properties

    @[JSON::Field(key: "hasBaleen", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter has_baleen : Bool? = nil

    @[JSON::Field(key: "hasTeeth", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter has_teeth : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @class_name : String? = nil,
      # Optional properties
      @has_baleen : Bool? = nil,
      @has_teeth : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"class_name\" is required and cannot be null") if @class_name.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @class_name.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_name Object to be assigned
    def class_name=(class_name : String?)
      if class_name.nil?
        raise ArgumentError.new("\"class_name\" is required and cannot be null")
      end
      @class_name = class_name
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] has_baleen Object to be assigned
    def has_baleen=(has_baleen : Bool?)
      if has_baleen.nil?
        return @has_baleen = nil
      end
      @has_baleen = has_baleen
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] has_teeth Object to be assigned
    def has_teeth=(has_teeth : Bool?)
      if has_teeth.nil?
        return @has_teeth = nil
      end
      @has_teeth = has_teeth
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
    def_equals_and_hash(@class_name, @has_baleen, @has_teeth)
  end
end
