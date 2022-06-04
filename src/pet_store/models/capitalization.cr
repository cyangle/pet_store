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
  class Capitalization
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "smallCamel", type: String?, presence: true, ignore_serialize: small_camel.nil? && !small_camel_present?)]
    property small_camel : String?

    @[JSON::Field(ignore: true)]
    property? small_camel_present : Bool = false

    @[JSON::Field(key: "CapitalCamel", type: String?, presence: true, ignore_serialize: capital_camel.nil? && !capital_camel_present?)]
    property capital_camel : String?

    @[JSON::Field(ignore: true)]
    property? capital_camel_present : Bool = false

    @[JSON::Field(key: "small_Snake", type: String?, presence: true, ignore_serialize: small_snake.nil? && !small_snake_present?)]
    property small_snake : String?

    @[JSON::Field(ignore: true)]
    property? small_snake_present : Bool = false

    @[JSON::Field(key: "Capital_Snake", type: String?, presence: true, ignore_serialize: capital_snake.nil? && !capital_snake_present?)]
    property capital_snake : String?

    @[JSON::Field(ignore: true)]
    property? capital_snake_present : Bool = false

    @[JSON::Field(key: "SCA_ETH_Flow_Points", type: String?, presence: true, ignore_serialize: sca_eth_flow_points.nil? && !sca_eth_flow_points_present?)]
    property sca_eth_flow_points : String?

    @[JSON::Field(ignore: true)]
    property? sca_eth_flow_points_present : Bool = false

    # Name of the pet
    @[JSON::Field(key: "ATT_NAME", type: String?, presence: true, ignore_serialize: att_name.nil? && !att_name_present?)]
    property att_name : String?

    @[JSON::Field(ignore: true)]
    property? att_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @small_camel : String? = nil,
      @capital_camel : String? = nil,
      @small_snake : String? = nil,
      @capital_snake : String? = nil,
      @sca_eth_flow_points : String? = nil,
      @att_name : String? = nil
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
    def_equals_and_hash(@small_camel, @capital_camel, @small_snake, @capital_snake, @sca_eth_flow_points, @att_name)
  end
end
