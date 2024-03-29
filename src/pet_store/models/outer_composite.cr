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
  class OuterComposite
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "my_number", type: Float64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter my_number : Float64? = nil

    @[JSON::Field(key: "my_string", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter my_string : String? = nil

    @[JSON::Field(key: "my_boolean", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter my_boolean : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @my_number : Float64? = nil,
      @my_string : String? = nil,
      @my_boolean : Bool? = nil
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
    # @param [Object] my_number Object to be assigned
    def my_number=(new_value : Float64?)
      @my_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] my_string Object to be assigned
    def my_string=(new_value : String?)
      @my_string = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] my_boolean Object to be assigned
    def my_boolean=(new_value : Bool?)
      @my_boolean = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@my_number, @my_string, @my_boolean)
  end
end
