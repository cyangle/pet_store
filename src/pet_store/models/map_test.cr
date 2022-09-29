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
  class MapTest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "map_map_of_string", type: Hash(String, Hash(String, String))?, default: nil, required: false, nullable: false, emit_null: false)]
    getter map_map_of_string : Hash(String, Hash(String, String))? = nil

    @[JSON::Field(key: "map_of_enum_string", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter map_of_enum_string : Hash(String, String)? = nil

    VALID_VALUES_FOR_MAP_OF_ENUM_STRING = StaticArray["UPPER", "lower"]

    @[JSON::Field(key: "direct_map", type: Hash(String, Bool)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter direct_map : Hash(String, Bool)? = nil

    @[JSON::Field(key: "indirect_map", type: Hash(String, Bool)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter indirect_map : Hash(String, Bool)? = nil

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _map_of_enum_string = @map_of_enum_string
        invalid_properties.push(OpenApi::EnumValidator.error_message("map_of_enum_string", VALID_VALUES_FOR_MAP_OF_ENUM_STRING)) unless OpenApi::EnumValidator.valid?("map_of_enum_string", _map_of_enum_string.values, VALID_VALUES_FOR_MAP_OF_ENUM_STRING)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _map_of_enum_string = @map_of_enum_string
        return false unless OpenApi::EnumValidator.valid?("map_of_enum_string", _map_of_enum_string.values, VALID_VALUES_FOR_MAP_OF_ENUM_STRING)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] map_map_of_string Object to be assigned
    def map_map_of_string=(map_map_of_string : Hash(String, Hash(String, String))?)
      if map_map_of_string.nil?
        return @map_map_of_string = nil
      end
      _map_map_of_string = map_map_of_string.not_nil!
      @map_map_of_string = _map_map_of_string
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] map_of_enum_string Object to be assigned
    def map_of_enum_string=(map_of_enum_string : Hash(String, String)?)
      if map_of_enum_string.nil?
        return @map_of_enum_string = nil
      end
      _map_of_enum_string = map_of_enum_string.not_nil!
      OpenApi::EnumValidator.validate("map_of_enum_string", _map_of_enum_string.values, VALID_VALUES_FOR_MAP_OF_ENUM_STRING)
      @map_of_enum_string = _map_of_enum_string
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direct_map Object to be assigned
    def direct_map=(direct_map : Hash(String, Bool)?)
      if direct_map.nil?
        return @direct_map = nil
      end
      _direct_map = direct_map.not_nil!
      @direct_map = _direct_map
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] indirect_map Object to be assigned
    def indirect_map=(indirect_map : Hash(String, Bool)?)
      if indirect_map.nil?
        return @indirect_map = nil
      end
      _indirect_map = indirect_map.not_nil!
      @indirect_map = _indirect_map
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@map_map_of_string, @map_of_enum_string, @direct_map, @indirect_map)
  end
end
