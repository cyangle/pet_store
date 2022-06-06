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
  class FormatTest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "number", type: Float64)]
    getter number : Float64

    @[JSON::Field(key: "byte", type: String)]
    property byte : String

    @[JSON::Field(key: "date", type: Time, converter: Time::ISO8601DateConverter)]
    property date : Time

    @[JSON::Field(key: "password", type: String)]
    getter password : String

    # Optional properties

    @[JSON::Field(key: "integer", type: Int32?, presence: true, ignore_serialize: integer.nil? && !integer_present?)]
    getter integer : Int32?

    @[JSON::Field(ignore: true)]
    property? integer_present : Bool = false

    @[JSON::Field(key: "int32", type: Int32?, presence: true, ignore_serialize: int32.nil? && !int32_present?)]
    getter int32 : Int32?

    @[JSON::Field(ignore: true)]
    property? int32_present : Bool = false

    @[JSON::Field(key: "int64", type: Int64?, presence: true, ignore_serialize: int64.nil? && !int64_present?)]
    property int64 : Int64?

    @[JSON::Field(ignore: true)]
    property? int64_present : Bool = false

    @[JSON::Field(key: "float", type: Float32?, presence: true, ignore_serialize: float.nil? && !float_present?)]
    getter float : Float32?

    @[JSON::Field(ignore: true)]
    property? float_present : Bool = false

    @[JSON::Field(key: "double", type: Float64?, presence: true, ignore_serialize: double.nil? && !double_present?)]
    getter double : Float64?

    @[JSON::Field(ignore: true)]
    property? double_present : Bool = false

    @[JSON::Field(key: "string", type: String?, presence: true, ignore_serialize: string.nil? && !string_present?)]
    getter string : String?

    @[JSON::Field(ignore: true)]
    property? string_present : Bool = false

    @[JSON::Field(key: "binary", type: ::File?, presence: true, ignore_serialize: binary.nil? && !binary_present?)]
    property binary : ::File?

    @[JSON::Field(ignore: true)]
    property? binary_present : Bool = false

    @[JSON::Field(key: "dateTime", type: Time?, converter: Time::RFC3339Converter, presence: true, ignore_serialize: date_time.nil? && !date_time_present?)]
    property date_time : Time?

    @[JSON::Field(ignore: true)]
    property? date_time_present : Bool = false

    @[JSON::Field(key: "uuid", type: String?, presence: true, ignore_serialize: uuid.nil? && !uuid_present?)]
    property uuid : String?

    @[JSON::Field(ignore: true)]
    property? uuid_present : Bool = false

    # A string that is a 10 digit number. Can have leading zeros.
    @[JSON::Field(key: "pattern_with_digits", type: String?, presence: true, ignore_serialize: pattern_with_digits.nil? && !pattern_with_digits_present?)]
    getter pattern_with_digits : String?

    @[JSON::Field(ignore: true)]
    property? pattern_with_digits_present : Bool = false

    # A string starting with 'image_' (case insensitive) and one to three digits following i.e. Image_01.
    @[JSON::Field(key: "pattern_with_digits_and_delimiter", type: String?, presence: true, ignore_serialize: pattern_with_digits_and_delimiter.nil? && !pattern_with_digits_and_delimiter_present?)]
    getter pattern_with_digits_and_delimiter : String?

    @[JSON::Field(ignore: true)]
    property? pattern_with_digits_and_delimiter_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @number : Float64,
      @byte : String,
      @date : Time,
      @password : String,
      # Optional properties
      @integer : Int32? = nil,
      @int32 : Int32? = nil,
      @int64 : Int64? = nil,
      @float : Float32? = nil,
      @double : Float64? = nil,
      @string : String? = nil,
      @binary : ::File? = nil,
      @date_time : Time? = nil,
      @uuid : String? = nil,
      @pattern_with_digits : String? = nil,
      @pattern_with_digits_and_delimiter : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @number > 543.2
        invalid_properties.push("invalid value for \"number\", must be smaller than or equal to 543.2.")
      end

      if @number < 32.1
        invalid_properties.push("invalid value for \"number\", must be greater than or equal to 32.1.")
      end

      if @password.to_s.size > 64
        invalid_properties.push("invalid value for \"password\", the character length must be smaller than or equal to 64.")
      end

      if @password.to_s.size < 10
        invalid_properties.push("invalid value for \"password\", the character length must be great than or equal to 10.")
      end

      if !@integer.nil? && @integer > 100
        invalid_properties.push("invalid value for \"integer\", must be smaller than or equal to 100.")
      end

      if !@integer.nil? && @integer < 10
        invalid_properties.push("invalid value for \"integer\", must be greater than or equal to 10.")
      end

      if !@int32.nil? && @int32 > 200
        invalid_properties.push("invalid value for \"int32\", must be smaller than or equal to 200.")
      end

      if !@int32.nil? && @int32 < 20
        invalid_properties.push("invalid value for \"int32\", must be greater than or equal to 20.")
      end

      if !@float.nil? && @float > 987.6
        invalid_properties.push("invalid value for \"float\", must be smaller than or equal to 987.6.")
      end

      if !@float.nil? && @float < 54.3
        invalid_properties.push("invalid value for \"float\", must be greater than or equal to 54.3.")
      end

      if !@double.nil? && @double > 123.4
        invalid_properties.push("invalid value for \"double\", must be smaller than or equal to 123.4.")
      end

      if !@double.nil? && @double < 67.8
        invalid_properties.push("invalid value for \"double\", must be greater than or equal to 67.8.")
      end

      pattern = /[a-z]/i
      if !@string.nil? && @string !~ pattern
        invalid_properties.push("invalid value for \"string\", must conform to the pattern #{pattern}.")
      end

      pattern = /^\d{10}$/
      if !@pattern_with_digits.nil? && @pattern_with_digits !~ pattern
        invalid_properties.push("invalid value for \"pattern_with_digits\", must conform to the pattern #{pattern}.")
      end

      pattern = /^image_\d{1,3}$/i
      if !@pattern_with_digits_and_delimiter.nil? && @pattern_with_digits_and_delimiter !~ pattern
        invalid_properties.push("invalid value for \"pattern_with_digits_and_delimiter\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @number > 543.2
      return false if @number < 32.1
      return false if @password.to_s.size > 64
      return false if @password.to_s.size < 10
      return false if !@integer.nil? && @integer > 100
      return false if !@integer.nil? && @integer < 10
      return false if !@int32.nil? && @int32 > 200
      return false if !@int32.nil? && @int32 < 20
      return false if !@float.nil? && @float > 987.6
      return false if !@float.nil? && @float < 54.3
      return false if !@double.nil? && @double > 123.4
      return false if !@double.nil? && @double < 67.8
      return false if !@string.nil? && @string !~ /[a-z]/i
      return false if !@pattern_with_digits.nil? && @pattern_with_digits !~ /^\d{10}$/
      return false if !@pattern_with_digits_and_delimiter.nil? && @pattern_with_digits_and_delimiter !~ /^image_\d{1,3}$/i

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number : Float64)
      if number > 543.2
        raise ArgumentError.new("invalid value for \"number\", must be smaller than or equal to 543.2.")
      end

      if number < 32.1
        raise ArgumentError.new("invalid value for \"number\", must be greater than or equal to 32.1.")
      end

      @number = number
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password : String)
      if password.to_s.size > 64
        raise ArgumentError.new("invalid value for \"password\", the character length must be smaller than or equal to 64.")
      end

      if password.to_s.size < 10
        raise ArgumentError.new("invalid value for \"password\", the character length must be great than or equal to 10.")
      end

      @password = password
    end

    # Custom attribute writer method with validation
    # @param [Object] integer Value to be assigned
    def integer=(integer : Int32?)
      if !integer.nil? && integer > 100
        raise ArgumentError.new("invalid value for \"integer\", must be smaller than or equal to 100.")
      end

      if !integer.nil? && integer < 10
        raise ArgumentError.new("invalid value for \"integer\", must be greater than or equal to 10.")
      end

      @integer = integer
    end

    # Custom attribute writer method with validation
    # @param [Object] int32 Value to be assigned
    def int32=(int32 : Int32?)
      if !int32.nil? && int32 > 200
        raise ArgumentError.new("invalid value for \"int32\", must be smaller than or equal to 200.")
      end

      if !int32.nil? && int32 < 20
        raise ArgumentError.new("invalid value for \"int32\", must be greater than or equal to 20.")
      end

      @int32 = int32
    end

    # Custom attribute writer method with validation
    # @param [Object] float Value to be assigned
    def float=(float : Float32?)
      if !float.nil? && float > 987.6
        raise ArgumentError.new("invalid value for \"float\", must be smaller than or equal to 987.6.")
      end

      if !float.nil? && float < 54.3
        raise ArgumentError.new("invalid value for \"float\", must be greater than or equal to 54.3.")
      end

      @float = float
    end

    # Custom attribute writer method with validation
    # @param [Object] double Value to be assigned
    def double=(double : Float64?)
      if !double.nil? && double > 123.4
        raise ArgumentError.new("invalid value for \"double\", must be smaller than or equal to 123.4.")
      end

      if !double.nil? && double < 67.8
        raise ArgumentError.new("invalid value for \"double\", must be greater than or equal to 67.8.")
      end

      @double = double
    end

    # Custom attribute writer method with validation
    # @param [Object] string Value to be assigned
    def string=(string : String?)
      pattern = /[a-z]/i
      if !string.nil? && string !~ pattern
        raise ArgumentError.new("invalid value for \"string\", must conform to the pattern #{pattern}.")
      end

      @string = string
    end

    # Custom attribute writer method with validation
    # @param [Object] pattern_with_digits Value to be assigned
    def pattern_with_digits=(pattern_with_digits : String?)
      pattern = /^\d{10}$/
      if !pattern_with_digits.nil? && pattern_with_digits !~ pattern
        raise ArgumentError.new("invalid value for \"pattern_with_digits\", must conform to the pattern #{pattern}.")
      end

      @pattern_with_digits = pattern_with_digits
    end

    # Custom attribute writer method with validation
    # @param [Object] pattern_with_digits_and_delimiter Value to be assigned
    def pattern_with_digits_and_delimiter=(pattern_with_digits_and_delimiter : String?)
      pattern = /^image_\d{1,3}$/i
      if !pattern_with_digits_and_delimiter.nil? && pattern_with_digits_and_delimiter !~ pattern
        raise ArgumentError.new("invalid value for \"pattern_with_digits_and_delimiter\", must conform to the pattern #{pattern}.")
      end

      @pattern_with_digits_and_delimiter = pattern_with_digits_and_delimiter
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
    def_equals_and_hash(@number, @byte, @date, @password, @integer, @integer_present, @int32, @int32_present, @int64, @int64_present, @float, @float_present, @double, @double_present, @string, @string_present, @binary, @binary_present, @date_time, @date_time_present, @uuid, @uuid_present, @pattern_with_digits, @pattern_with_digits_present, @pattern_with_digits_and_delimiter, @pattern_with_digits_and_delimiter_present)
  end
end
