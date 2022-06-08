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
  class Pet
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    @[JSON::Field(key: "photoUrls", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter photo_urls : Array(String)? = nil

    # Optional properties

    @[JSON::Field(key: "id", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : Int64? = nil

    @[JSON::Field(key: "category", type: Category?, default: nil, required: false, nullable: false, emit_null: false)]
    getter category : Category? = nil

    @[JSON::Field(key: "tags", type: Array(Tag)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tags : Array(Tag)? = nil

    # pet status in the store
    @[JSON::Field(key: "status", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["available", "pending", "sold"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String? = nil,
      @photo_urls : Array(String)? = nil,
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
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?
      invalid_properties.push("\"photo_urls\" is required and cannot be null") if @photo_urls.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @photo_urls.nil?
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        raise ArgumentError.new("\"name\" is required and cannot be null")
      end
      @name = name
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] photo_urls Object to be assigned
    def photo_urls=(photo_urls : Array(String)?)
      if photo_urls.nil?
        raise ArgumentError.new("\"photo_urls\" is required and cannot be null")
      end
      @photo_urls = photo_urls
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : Int64?)
      if id.nil?
        return @id = nil
      end
      @id = id
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(category : Category?)
      if category.nil?
        return @category = nil
      end
      @category = category
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tags Object to be assigned
    def tags=(tags : Array(Tag)?)
      if tags.nil?
        return @tags = nil
      end
      @tags = tags
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        return @status = nil
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
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
    def_equals_and_hash(@name, @photo_urls, @id, @category, @tags, @status)
  end
end
