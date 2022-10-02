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
  class Banana
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "lengthCm", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter length_cm : Float64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @length_cm : Float64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"length_cm\" is required and cannot be null") if @length_cm.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @length_cm.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] length_cm Object to be assigned
    def length_cm=(length_cm : Float64?)
      if length_cm.nil?
        raise ArgumentError.new("\"length_cm\" is required and cannot be null")
      end
      _length_cm = length_cm.not_nil!
      @length_cm = _length_cm
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@length_cm)
  end
end
