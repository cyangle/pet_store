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
  class ReadOnlyFirst
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "bar", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bar : String? = nil

    @[JSON::Field(key: "baz", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter baz : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bar : String? = nil,
      @baz : String? = nil
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
    # @param [Object] bar Object to be assigned
    def bar=(bar : String?)
      if bar.nil?
        return @bar = nil
      end
      _bar = bar.not_nil!
      @bar = _bar
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] baz Object to be assigned
    def baz=(baz : String?)
      if baz.nil?
        return @baz = nil
      end
      _baz = baz.not_nil!
      @baz = _baz
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bar, @baz)
  end
end
