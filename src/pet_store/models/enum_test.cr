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
  class EnumTest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "enum_string_required", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enum_string_required : String? = nil

    ENUM_VALIDATOR_FOR_ENUM_STRING_REQUIRED = EnumValidator.new("enum_string_required", "String", ["UPPER", "lower", ""])

    @[JSON::Field(key: "outerEnumRquired", type: PetStore::OuterEnumRquired?, default: nil, required: true, nullable: false, emit_null: false)]
    getter outer_enum_rquired : PetStore::OuterEnumRquired? = nil

    @[JSON::Field(key: "outerEnumRquiredInt64", type: PetStore::OuterEnumRquiredInt64?, default: PetStore::OuterEnumRquiredInt64.new(3), required: true, nullable: false, emit_null: false)]
    getter outer_enum_rquired_int64 : PetStore::OuterEnumRquiredInt64? = PetStore::OuterEnumRquiredInt64.new(3)

    # Optional properties

    @[JSON::Field(key: "enum_string", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter enum_string : String? = nil

    ENUM_VALIDATOR_FOR_ENUM_STRING = EnumValidator.new("enum_string", "String", ["UPPER", "lower", ""])

    @[JSON::Field(key: "enum_int32", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter enum_int32 : Int32? = nil

    ENUM_VALIDATOR_FOR_ENUM_INT32 = EnumValidator.new("enum_int32", "Int32", ["1", "-1"])

    @[JSON::Field(key: "enum_int64", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter enum_int64 : Int64? = nil

    ENUM_VALIDATOR_FOR_ENUM_INT64 = EnumValidator.new("enum_int64", "Int64", ["1", "-1"])

    @[JSON::Field(key: "enum_float", type: Float32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter enum_float : Float32? = nil

    ENUM_VALIDATOR_FOR_ENUM_FLOAT = EnumValidator.new("enum_float", "Float32", ["1.1", "-1.2"])

    @[JSON::Field(key: "enum_double", type: Float64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter enum_double : Float64? = nil

    ENUM_VALIDATOR_FOR_ENUM_DOUBLE = EnumValidator.new("enum_double", "Float64", ["1.1", "-1.2"])

    @[JSON::Field(key: "outerEnum", type: PetStore::OuterEnum?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: outer_enum.nil? && !outer_enum_present?)]
    getter outer_enum : PetStore::OuterEnum? = nil

    @[JSON::Field(ignore: true)]
    property? outer_enum_present : Bool = false

    @[JSON::Field(key: "outerEnumInteger", type: PetStore::OuterEnumInteger?, default: nil, required: false, nullable: false, emit_null: false)]
    getter outer_enum_integer : PetStore::OuterEnumInteger? = nil

    @[JSON::Field(key: "outerEnumDefaultValue", type: PetStore::OuterEnumDefaultValue?, default: PetStore::OuterEnumDefaultValue.new("placed"), required: false, nullable: false, emit_null: false)]
    getter outer_enum_default_value : PetStore::OuterEnumDefaultValue? = PetStore::OuterEnumDefaultValue.new("placed")

    @[JSON::Field(key: "outerEnumIntegerDefaultValue", type: PetStore::OuterEnumIntegerDefaultValue?, default: PetStore::OuterEnumIntegerDefaultValue.new(0), required: false, nullable: false, emit_null: false)]
    getter outer_enum_integer_default_value : PetStore::OuterEnumIntegerDefaultValue? = PetStore::OuterEnumIntegerDefaultValue.new(0)

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @enum_string_required : String? = nil,
      @outer_enum_rquired : PetStore::OuterEnumRquired? = nil,
      @outer_enum_rquired_int64 : PetStore::OuterEnumRquiredInt64? = PetStore::OuterEnumRquiredInt64.new(3),
      # Optional properties
      @enum_string : String? = nil,
      @enum_int32 : Int32? = nil,
      @enum_int64 : Int64? = nil,
      @enum_float : Float32? = nil,
      @enum_double : Float64? = nil,
      @outer_enum : PetStore::OuterEnum? = nil,
      @outer_enum_integer : PetStore::OuterEnumInteger? = nil,
      @outer_enum_default_value : PetStore::OuterEnumDefaultValue? = PetStore::OuterEnumDefaultValue.new("placed"),
      @outer_enum_integer_default_value : PetStore::OuterEnumIntegerDefaultValue? = PetStore::OuterEnumIntegerDefaultValue.new(0)
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_ENUM_STRING_REQUIRED.error_message) unless ENUM_VALIDATOR_FOR_ENUM_STRING_REQUIRED.valid?(@enum_string_required, false)
      invalid_properties.push("\"outer_enum_rquired\" is required and cannot be null") if @outer_enum_rquired.nil?

      invalid_properties.push(@outer_enum_rquired.not_nil!.error_message) if !@outer_enum_rquired.nil? && !@outer_enum_rquired.not_nil!.valid?
      invalid_properties.push("\"outer_enum_rquired_int64\" is required and cannot be null") if @outer_enum_rquired_int64.nil?

      invalid_properties.push(@outer_enum_rquired_int64.not_nil!.error_message) if !@outer_enum_rquired_int64.nil? && !@outer_enum_rquired_int64.not_nil!.valid?

      invalid_properties.push(ENUM_VALIDATOR_FOR_ENUM_STRING.error_message) unless ENUM_VALIDATOR_FOR_ENUM_STRING.valid?(@enum_string)

      invalid_properties.push(ENUM_VALIDATOR_FOR_ENUM_INT32.error_message) unless ENUM_VALIDATOR_FOR_ENUM_INT32.valid?(@enum_int32)

      invalid_properties.push(ENUM_VALIDATOR_FOR_ENUM_INT64.error_message) unless ENUM_VALIDATOR_FOR_ENUM_INT64.valid?(@enum_int64)

      invalid_properties.push(ENUM_VALIDATOR_FOR_ENUM_FLOAT.error_message) unless ENUM_VALIDATOR_FOR_ENUM_FLOAT.valid?(@enum_float)

      invalid_properties.push(ENUM_VALIDATOR_FOR_ENUM_DOUBLE.error_message) unless ENUM_VALIDATOR_FOR_ENUM_DOUBLE.valid?(@enum_double)

      invalid_properties.push(@outer_enum.not_nil!.error_message) if !@outer_enum.nil? && !@outer_enum.not_nil!.valid?

      invalid_properties.push(@outer_enum_integer.not_nil!.error_message) if !@outer_enum_integer.nil? && !@outer_enum_integer.not_nil!.valid?

      invalid_properties.push(@outer_enum_default_value.not_nil!.error_message) if !@outer_enum_default_value.nil? && !@outer_enum_default_value.not_nil!.valid?

      invalid_properties.push(@outer_enum_integer_default_value.not_nil!.error_message) if !@outer_enum_integer_default_value.nil? && !@outer_enum_integer_default_value.not_nil!.valid?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_ENUM_STRING_REQUIRED.valid?(@enum_string_required, false)
      return false if @outer_enum_rquired.nil?
      return false if !@outer_enum_rquired.nil? && !@outer_enum_rquired.not_nil!.valid?
      return false if @outer_enum_rquired_int64.nil?
      return false if !@outer_enum_rquired_int64.nil? && !@outer_enum_rquired_int64.not_nil!.valid?
      return false unless ENUM_VALIDATOR_FOR_ENUM_STRING.valid?(@enum_string)
      return false unless ENUM_VALIDATOR_FOR_ENUM_INT32.valid?(@enum_int32)
      return false unless ENUM_VALIDATOR_FOR_ENUM_INT64.valid?(@enum_int64)
      return false unless ENUM_VALIDATOR_FOR_ENUM_FLOAT.valid?(@enum_float)
      return false unless ENUM_VALIDATOR_FOR_ENUM_DOUBLE.valid?(@enum_double)
      return false if !@outer_enum.nil? && !@outer_enum.not_nil!.valid?
      return false if !@outer_enum_integer.nil? && !@outer_enum_integer.not_nil!.valid?
      return false if !@outer_enum_default_value.nil? && !@outer_enum_default_value.not_nil!.valid?
      return false if !@outer_enum_integer_default_value.nil? && !@outer_enum_integer_default_value.not_nil!.valid?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enum_string_required Object to be assigned
    def enum_string_required=(enum_string_required : String?)
      if enum_string_required.nil?
        raise ArgumentError.new("\"enum_string_required\" is required and cannot be null")
      end
      _enum_string_required = enum_string_required.not_nil!
      ENUM_VALIDATOR_FOR_ENUM_STRING_REQUIRED.valid!(_enum_string_required)
      @enum_string_required = _enum_string_required
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outer_enum_rquired Object to be assigned
    def outer_enum_rquired=(outer_enum_rquired : PetStore::OuterEnumRquired?)
      if outer_enum_rquired.nil?
        raise ArgumentError.new("\"outer_enum_rquired\" is required and cannot be null")
      end
      _outer_enum_rquired = outer_enum_rquired.not_nil!
      _outer_enum_rquired.valid!
      @outer_enum_rquired = _outer_enum_rquired
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outer_enum_rquired_int64 Object to be assigned
    def outer_enum_rquired_int64=(outer_enum_rquired_int64 : PetStore::OuterEnumRquiredInt64?)
      if outer_enum_rquired_int64.nil?
        raise ArgumentError.new("\"outer_enum_rquired_int64\" is required and cannot be null")
      end
      _outer_enum_rquired_int64 = outer_enum_rquired_int64.not_nil!
      _outer_enum_rquired_int64.valid!
      @outer_enum_rquired_int64 = _outer_enum_rquired_int64
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enum_string Object to be assigned
    def enum_string=(enum_string : String?)
      if enum_string.nil?
        return @enum_string = nil
      end
      _enum_string = enum_string.not_nil!
      ENUM_VALIDATOR_FOR_ENUM_STRING.valid!(_enum_string)
      @enum_string = _enum_string
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enum_int32 Object to be assigned
    def enum_int32=(enum_int32 : Int32?)
      if enum_int32.nil?
        return @enum_int32 = nil
      end
      _enum_int32 = enum_int32.not_nil!
      ENUM_VALIDATOR_FOR_ENUM_INT32.valid!(_enum_int32)
      @enum_int32 = _enum_int32
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enum_int64 Object to be assigned
    def enum_int64=(enum_int64 : Int64?)
      if enum_int64.nil?
        return @enum_int64 = nil
      end
      _enum_int64 = enum_int64.not_nil!
      ENUM_VALIDATOR_FOR_ENUM_INT64.valid!(_enum_int64)
      @enum_int64 = _enum_int64
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enum_float Object to be assigned
    def enum_float=(enum_float : Float32?)
      if enum_float.nil?
        return @enum_float = nil
      end
      _enum_float = enum_float.not_nil!
      ENUM_VALIDATOR_FOR_ENUM_FLOAT.valid!(_enum_float)
      @enum_float = _enum_float
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enum_double Object to be assigned
    def enum_double=(enum_double : Float64?)
      if enum_double.nil?
        return @enum_double = nil
      end
      _enum_double = enum_double.not_nil!
      ENUM_VALIDATOR_FOR_ENUM_DOUBLE.valid!(_enum_double)
      @enum_double = _enum_double
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outer_enum Object to be assigned
    def outer_enum=(outer_enum : PetStore::OuterEnum?)
      if outer_enum.nil?
        return @outer_enum = nil
      end
      _outer_enum = outer_enum.not_nil!
      _outer_enum.valid!
      @outer_enum = _outer_enum
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outer_enum_integer Object to be assigned
    def outer_enum_integer=(outer_enum_integer : PetStore::OuterEnumInteger?)
      if outer_enum_integer.nil?
        return @outer_enum_integer = nil
      end
      _outer_enum_integer = outer_enum_integer.not_nil!
      _outer_enum_integer.valid!
      @outer_enum_integer = _outer_enum_integer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outer_enum_default_value Object to be assigned
    def outer_enum_default_value=(outer_enum_default_value : PetStore::OuterEnumDefaultValue?)
      if outer_enum_default_value.nil?
        return @outer_enum_default_value = nil
      end
      _outer_enum_default_value = outer_enum_default_value.not_nil!
      _outer_enum_default_value.valid!
      @outer_enum_default_value = _outer_enum_default_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outer_enum_integer_default_value Object to be assigned
    def outer_enum_integer_default_value=(outer_enum_integer_default_value : PetStore::OuterEnumIntegerDefaultValue?)
      if outer_enum_integer_default_value.nil?
        return @outer_enum_integer_default_value = nil
      end
      _outer_enum_integer_default_value = outer_enum_integer_default_value.not_nil!
      _outer_enum_integer_default_value.valid!
      @outer_enum_integer_default_value = _outer_enum_integer_default_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enum_string_required, @outer_enum_rquired, @outer_enum_rquired_int64, @enum_string, @enum_int32, @enum_int64, @enum_float, @enum_double, @outer_enum, @outer_enum_present, @outer_enum_integer, @outer_enum_default_value, @outer_enum_integer_default_value)
  end
end
