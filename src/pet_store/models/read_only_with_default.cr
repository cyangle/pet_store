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
  class ReadOnlyWithDefault
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "prop1", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter prop1 : String? = nil

    @[JSON::Field(key: "prop2", type: String?, default: "defaultProp2", required: false, nullable: false, emit_null: false)]
    getter prop2 : String? = "defaultProp2"

    @[JSON::Field(key: "prop3", type: String?, default: "defaultProp3", required: false, nullable: false, emit_null: false)]
    getter prop3 : String? = "defaultProp3"

    @[JSON::Field(key: "boolProp1", type: Bool?, default: false, required: false, nullable: false, emit_null: false)]
    getter bool_prop1 : Bool? = false

    @[JSON::Field(key: "boolProp2", type: Bool?, default: true, required: false, nullable: false, emit_null: false)]
    getter bool_prop2 : Bool? = true

    @[JSON::Field(key: "intProp1", type: Float64?, default: 100, required: false, nullable: false, emit_null: false)]
    getter int_prop1 : Float64? = 100

    @[JSON::Field(key: "intProp2", type: Float64?, default: 120, required: false, nullable: false, emit_null: false)]
    getter int_prop2 : Float64? = 120

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @prop1 : String? = nil,
      @prop2 : String? = "defaultProp2",
      @prop3 : String? = "defaultProp3",
      @bool_prop1 : Bool? = false,
      @bool_prop2 : Bool? = true,
      @int_prop1 : Float64? = 100,
      @int_prop2 : Float64? = 120
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
    # @param [Object] prop1 Object to be assigned
    def prop1=(prop1 : String?)
      if prop1.nil?
        return @prop1 = nil
      end
      @prop1 = prop1
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prop2 Object to be assigned
    def prop2=(prop2 : String?)
      if prop2.nil?
        return @prop2 = nil
      end
      @prop2 = prop2
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prop3 Object to be assigned
    def prop3=(prop3 : String?)
      if prop3.nil?
        return @prop3 = nil
      end
      @prop3 = prop3
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bool_prop1 Object to be assigned
    def bool_prop1=(bool_prop1 : Bool?)
      if bool_prop1.nil?
        return @bool_prop1 = nil
      end
      @bool_prop1 = bool_prop1
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bool_prop2 Object to be assigned
    def bool_prop2=(bool_prop2 : Bool?)
      if bool_prop2.nil?
        return @bool_prop2 = nil
      end
      @bool_prop2 = bool_prop2
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] int_prop1 Object to be assigned
    def int_prop1=(int_prop1 : Float64?)
      if int_prop1.nil?
        return @int_prop1 = nil
      end
      @int_prop1 = int_prop1
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] int_prop2 Object to be assigned
    def int_prop2=(int_prop2 : Float64?)
      if int_prop2.nil?
        return @int_prop2 = nil
      end
      @int_prop2 = int_prop2
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
    def_equals_and_hash(@prop1, @prop2, @prop3, @bool_prop1, @bool_prop2, @int_prop1, @int_prop2)
  end
end
