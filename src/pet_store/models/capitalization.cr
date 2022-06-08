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

    @[JSON::Field(key: "smallCamel", type: String?, default: nil, presence: true, ignore_serialize: small_camel.nil? && !small_camel_present?)]
    getter small_camel : String? = nil

    @[JSON::Field(ignore: true)]
    property? small_camel_present : Bool = false

    @[JSON::Field(key: "CapitalCamel", type: String?, default: nil, presence: true, ignore_serialize: capital_camel.nil? && !capital_camel_present?)]
    getter capital_camel : String? = nil

    @[JSON::Field(ignore: true)]
    property? capital_camel_present : Bool = false

    @[JSON::Field(key: "small_Snake", type: String?, default: nil, presence: true, ignore_serialize: small_snake.nil? && !small_snake_present?)]
    getter small_snake : String? = nil

    @[JSON::Field(ignore: true)]
    property? small_snake_present : Bool = false

    @[JSON::Field(key: "Capital_Snake", type: String?, default: nil, presence: true, ignore_serialize: capital_snake.nil? && !capital_snake_present?)]
    getter capital_snake : String? = nil

    @[JSON::Field(ignore: true)]
    property? capital_snake_present : Bool = false

    @[JSON::Field(key: "SCA_ETH_Flow_Points", type: String?, default: nil, presence: true, ignore_serialize: sca_eth_flow_points.nil? && !sca_eth_flow_points_present?)]
    getter sca_eth_flow_points : String? = nil

    @[JSON::Field(ignore: true)]
    property? sca_eth_flow_points_present : Bool = false

    # Name of the pet
    @[JSON::Field(key: "ATT_NAME", type: String?, default: nil, presence: true, ignore_serialize: att_name.nil? && !att_name_present?)]
    getter att_name : String? = nil

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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] small_camel Object to be assigned
    def small_camel=(small_camel : String?)
      if small_camel.nil?
        @small_camel_present = false
        return @small_camel = nil
      end
      @small_camel = small_camel
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capital_camel Object to be assigned
    def capital_camel=(capital_camel : String?)
      if capital_camel.nil?
        @capital_camel_present = false
        return @capital_camel = nil
      end
      @capital_camel = capital_camel
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] small_snake Object to be assigned
    def small_snake=(small_snake : String?)
      if small_snake.nil?
        @small_snake_present = false
        return @small_snake = nil
      end
      @small_snake = small_snake
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capital_snake Object to be assigned
    def capital_snake=(capital_snake : String?)
      if capital_snake.nil?
        @capital_snake_present = false
        return @capital_snake = nil
      end
      @capital_snake = capital_snake
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sca_eth_flow_points Object to be assigned
    def sca_eth_flow_points=(sca_eth_flow_points : String?)
      if sca_eth_flow_points.nil?
        @sca_eth_flow_points_present = false
        return @sca_eth_flow_points = nil
      end
      @sca_eth_flow_points = sca_eth_flow_points
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] att_name Object to be assigned
    def att_name=(att_name : String?)
      if att_name.nil?
        @att_name_present = false
        return @att_name = nil
      end
      @att_name = att_name
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
    def_equals_and_hash(@small_camel, @small_camel_present, @capital_camel, @capital_camel_present, @small_snake, @small_snake_present, @capital_snake, @capital_snake_present, @sca_eth_flow_points, @sca_eth_flow_points_present, @att_name, @att_name_present)
  end
end
