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
  class Order
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "id", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : Int64? = nil

    @[JSON::Field(key: "petId", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pet_id : Int64? = nil

    @[JSON::Field(key: "quantity", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int32? = nil

    @[JSON::Field(key: "shipDate", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter ship_date : Time? = nil

    # Order Status
    @[JSON::Field(key: "status", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["placed", "approved", "delivered"])

    @[JSON::Field(key: "complete", type: Bool?, default: false, required: false, nullable: false, emit_null: false)]
    getter complete : Bool? = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @id : Int64? = nil,
      @pet_id : Int64? = nil,
      @quantity : Int32? = nil,
      @ship_date : Time? = nil,
      @status : String? = nil,
      @complete : Bool? = false
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
    # @param [Object] id Object to be assigned
    def id=(id : Int64?)
      if id.nil?
        return @id = nil
      end
      @id = id
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pet_id Object to be assigned
    def pet_id=(pet_id : Int64?)
      if pet_id.nil?
        return @pet_id = nil
      end
      @pet_id = pet_id
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int32?)
      if quantity.nil?
        return @quantity = nil
      end
      @quantity = quantity
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ship_date Object to be assigned
    def ship_date=(ship_date : Time?)
      if ship_date.nil?
        return @ship_date = nil
      end
      @ship_date = ship_date
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        return @status = nil
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = status
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] complete Object to be assigned
    def complete=(complete : Bool?)
      if complete.nil?
        return @complete = nil
      end
      @complete = complete
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
    def_equals_and_hash(@id, @pet_id, @quantity, @ship_date, @status, @complete)
  end
end
