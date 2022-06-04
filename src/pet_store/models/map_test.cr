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
  class MapTest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "map_map_of_string", type: Hash(String, Hash(String, String))?, presence: true, ignore_serialize: map_map_of_string.nil? && !map_map_of_string_present?)]
    property map_map_of_string : Hash(String, Hash(String, String))?

    @[JSON::Field(ignore: true)]
    property? map_map_of_string_present : Bool = false

    @[JSON::Field(key: "map_of_enum_string", type: Hash(String, String)?, presence: true, ignore_serialize: map_of_enum_string.nil? && !map_of_enum_string_present?)]
    getter map_of_enum_string : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? map_of_enum_string_present : Bool = false

    ENUM_VALIDATOR_FOR_MAP_OF_ENUM_STRING = EnumValidator.new("map_of_enum_string", "String", ["UPPER", "lower"])

    @[JSON::Field(key: "direct_map", type: Hash(String, Bool)?, presence: true, ignore_serialize: direct_map.nil? && !direct_map_present?)]
    property direct_map : Hash(String, Bool)?

    @[JSON::Field(ignore: true)]
    property? direct_map_present : Bool = false

    @[JSON::Field(key: "indirect_map", type: Hash(String, Bool)?, presence: true, ignore_serialize: indirect_map.nil? && !indirect_map_present?)]
    property indirect_map : Hash(String, Bool)?

    @[JSON::Field(ignore: true)]
    property? indirect_map_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @map_map_of_string : Hash(String, Hash(String, String))? = nil,
      @map_of_enum_string : Hash(String, String)? = nil,
      @direct_map : Hash(String, Bool)? = nil,
      @indirect_map : Hash(String, Bool)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_MAP_OF_ENUM_STRING.error_message) unless ENUM_VALIDATOR_FOR_MAP_OF_ENUM_STRING.all_valid?(@map_of_enum_string)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_MAP_OF_ENUM_STRING.all_valid?(@map_of_enum_string)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] map_of_enum_string Object to be assigned
    def map_of_enum_string=(map_of_enum_string)
      ENUM_VALIDATOR_FOR_MAP_OF_ENUM_STRING.all_valid!(map_of_enum_string)
      @map_of_enum_string = map_of_enum_string
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
    def_equals_and_hash(@map_map_of_string, @map_of_enum_string, @direct_map, @indirect_map)
  end
end
