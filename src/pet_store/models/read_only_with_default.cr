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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ReadOnlyWithDefault
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "prop1", type: String?, presence: true, ignore_serialize: prop1.nil? && !prop1_present?)]
    property prop1 : String?

    @[JSON::Field(ignore: true)]
    property? prop1_present : Bool = false

    @[JSON::Field(key: "prop2", type: String?, default: "defaultProp2", presence: true, ignore_serialize: prop2.nil? && !prop2_present?)]
    property prop2 : String? = "defaultProp2"

    @[JSON::Field(ignore: true)]
    property? prop2_present : Bool = false

    @[JSON::Field(key: "prop3", type: String?, default: "defaultProp3", presence: true, ignore_serialize: prop3.nil? && !prop3_present?)]
    property prop3 : String? = "defaultProp3"

    @[JSON::Field(ignore: true)]
    property? prop3_present : Bool = false

    @[JSON::Field(key: "boolProp1", type: Bool?, default: false, presence: true, ignore_serialize: bool_prop1.nil? && !bool_prop1_present?)]
    property bool_prop1 : Bool? = false

    @[JSON::Field(ignore: true)]
    property? bool_prop1_present : Bool = false

    @[JSON::Field(key: "boolProp2", type: Bool?, default: true, presence: true, ignore_serialize: bool_prop2.nil? && !bool_prop2_present?)]
    property bool_prop2 : Bool? = true

    @[JSON::Field(ignore: true)]
    property? bool_prop2_present : Bool = false

    @[JSON::Field(key: "intProp1", type: Float64?, default: 100, presence: true, ignore_serialize: int_prop1.nil? && !int_prop1_present?)]
    property int_prop1 : Float64? = 100

    @[JSON::Field(ignore: true)]
    property? int_prop1_present : Bool = false

    @[JSON::Field(key: "intProp2", type: Float64?, default: 120, presence: true, ignore_serialize: int_prop2.nil? && !int_prop2_present?)]
    property int_prop2 : Float64? = 120

    @[JSON::Field(ignore: true)]
    property? int_prop2_present : Bool = false

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
