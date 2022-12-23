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
  class AppleReq
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "cultivar", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter cultivar : String? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "mealy", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mealy : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @cultivar : String? = nil,
      # Optional properties
      @mealy : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"cultivar\" is required and cannot be null") if @cultivar.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @cultivar.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cultivar Object to be assigned
    def cultivar=(new_value : String?)
      raise ArgumentError.new("\"cultivar\" is required and cannot be null") if new_value.nil?

      @cultivar = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mealy Object to be assigned
    def mealy=(new_value : Bool?)
      @mealy = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@cultivar, @mealy)
  end
end
