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
  class MixedPropertiesAndAdditionalPropertiesClass
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "uuid", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter uuid : String? = nil

    @[JSON::Field(key: "dateTime", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter date_time : Time? = nil

    @[JSON::Field(key: "map", type: Hash(String, PetStore::Animal)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter map : Hash(String, PetStore::Animal)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @uuid : String? = nil,
      @date_time : Time? = nil,
      @map : Hash(String, PetStore::Animal)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _map = @map
        if _map.is_a?(Hash)
          _map.each do |_key, value|
            if value.is_a?(OpenApi::Validatable)
              invalid_properties.concat(value.list_invalid_properties_for("map"))
            end
          end
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _map = @map
        if _map.is_a?(Hash)
          _map.each do |_key, value|
            if value.is_a?(OpenApi::Validatable)
              return false unless value.valid?
            end
          end
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uuid Object to be assigned
    def uuid=(uuid : String?)
      if uuid.nil?
        return @uuid = nil
      end
      _uuid = uuid.not_nil!
      @uuid = _uuid
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_time Object to be assigned
    def date_time=(date_time : Time?)
      if date_time.nil?
        return @date_time = nil
      end
      _date_time = date_time.not_nil!
      @date_time = _date_time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] map Object to be assigned
    def map=(map : Hash(String, PetStore::Animal)?)
      if map.nil?
        return @map = nil
      end
      _map = map.not_nil!
      if _map.is_a?(Hash)
        _map.each do |_key, value|
          if value.is_a?(OpenApi::Validatable)
            value.validate
          end
        end
      end
      @map = _map
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@uuid, @date_time, @map)
  end
end
