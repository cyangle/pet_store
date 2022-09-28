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
  class OuterEnumRquired
    include OpenApi::Json

    property data : String

    ENUM_VALIDATOR = OpenApi::EnumValidator.new("outerEnumRquired", "String", ["started", "in_progress", "completed"])

    delegate to_json_object_key, to: @data
    delegate error_message, to: ENUM_VALIDATOR

    def self.from_json(value : JSON::PullParser) : OuterEnumRquired
      new(value)
    end

    def self.to_json(value : OuterEnumRquired, json : JSON::Builder) : Nil
      value.to_json(json)
    end

    def self.new(pull : JSON::PullParser)
      new(String.new(pull))
    end

    def self.from_json_object_key?(key : String)
      String.from_json_object_key?(key)
    end

    def self.new!(data : String)
      new(data).tap(&.valid!)
    end

    def initialize(@data : String)
    end

    def valid?
      ENUM_VALIDATOR.valid?(@data, false)
    end

    def valid!
      ENUM_VALIDATOR.valid!(@data, false)
    end

    def to_json(json : JSON::Builder) : Nil
      @data.to_json(json)
    end

    def_equals_and_hash(@data)
  end
end
