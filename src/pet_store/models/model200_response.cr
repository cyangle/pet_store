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
  # Model for testing model name starting with number
  class Model200Response
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "name", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : Int32? = nil

    @[JSON::Field(key: "class", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _class : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @name : Int32? = nil,
      @_class : String? = nil
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
    # @param [Object] name Object to be assigned
    def name=(name : Int32?)
      if name.nil?
        return @name = nil
      end
      @name = name
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _class Object to be assigned
    def _class=(_class : String?)
      if _class.nil?
        return @_class = nil
      end
      @_class = _class
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
    def_equals_and_hash(@name, @_class)
  end
end
