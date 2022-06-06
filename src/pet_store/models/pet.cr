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
  class Pet
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "name", type: String)]
    property name : String

    @[JSON::Field(key: "photoUrls", type: Array(String))]
    property photo_urls : Array(String)

    # Optional properties

    @[JSON::Field(key: "id", type: Int64?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    property id : Int64?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    @[JSON::Field(key: "category", type: Category?, presence: true, ignore_serialize: category.nil? && !category_present?)]
    property category : Category?

    @[JSON::Field(ignore: true)]
    property? category_present : Bool = false

    @[JSON::Field(key: "tags", type: Array(Tag)?, presence: true, ignore_serialize: tags.nil? && !tags_present?)]
    property tags : Array(Tag)?

    @[JSON::Field(ignore: true)]
    property? tags_present : Bool = false

    # pet status in the store
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["available", "pending", "sold"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String,
      @photo_urls : Array(String),
      # Optional properties
      @id : Int64? = nil,
      @category : Category? = nil,
      @tags : Array(Tag)? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status)
      @status = status
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
    def_equals_and_hash(@name, @photo_urls, @id, @id_present, @category, @category_present, @tags, @tags_present, @status, @status_present)
  end
end
