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
  class OuterEnum
    include OpenApi::Validatable
    include OpenApi::Json

    property data : String

    ERROR_MESSAGE = %{invalid value for "OuterEnum", must be one of ["placed", "approved", "delivered"].}

    VALID_VALUES = StaticArray["placed", "approved", "delivered"]

    delegate to_json_object_key, to: @data

    def self.from_json(value : JSON::PullParser) : OuterEnum
      new(value)
    end

    def self.to_json(value : OuterEnum, json : JSON::Builder) : Nil
      value.to_json(json)
    end

    def self.new(pull : JSON::PullParser)
      new(String.new(pull))
    end

    def self.from_json_object_key?(key : String)
      String.from_json_object_key?(key)
    end

    def self.new!(data : String)
      new(data).tap(&.validate)
    end

    def initialize(@data : String)
    end

    def error_message : String
      ERROR_MESSAGE
    end

    def list_invalid_properties : Array(String)
      errors = Array(String).new
      errors.push(error_message) unless valid?
      errors
    end

    def valid? : Bool
      OpenApi::EnumValidator.valid?(data, VALID_VALUES, false)
    end

    def validate : Nil
      OpenApi::EnumValidator.validate("OuterEnum", data, VALID_VALUES, false)
    end

    def to_json(json : JSON::Builder) : Nil
      @data.to_json(json)
    end

    def_equals_and_hash(@data)
  end
end
