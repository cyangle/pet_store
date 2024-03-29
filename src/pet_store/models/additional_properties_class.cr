#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

module PetStore
  class AdditionalPropertiesClass
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "map_property", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter map_property : Hash(String, String)? = nil

    @[JSON::Field(key: "map_of_map_property", type: Hash(String, Hash(String, String))?, default: nil, required: false, nullable: false, emit_null: false)]
    getter map_of_map_property : Hash(String, Hash(String, String))? = nil

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] map_property Object to be assigned
    def map_property=(new_value : Hash(String, String)?)
      @map_property = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] map_of_map_property Object to be assigned
    def map_of_map_property=(new_value : Hash(String, Hash(String, String))?)
      @map_of_map_property = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@map_property, @map_of_map_property)
  end
end
