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
  class FormatTest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "number", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter number : Float64? = nil
    MAX_FOR_NUMBER = Float64.new("543.2")
    MIN_FOR_NUMBER = Float64.new("32.1")

    @[JSON::Field(key: "byte", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter byte : String? = nil

    @[JSON::Field(key: "date", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter date : Time? = nil

    @[JSON::Field(key: "password", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter password : String? = nil
    MAX_LENGTH_FOR_PASSWORD = 64
    MIN_LENGTH_FOR_PASSWORD = 10

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "integer", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter integer : Int32? = nil
    MAX_FOR_INTEGER = Int32.new("100")
    MIN_FOR_INTEGER = Int32.new("10")

    @[JSON::Field(key: "int32", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter int32 : Int32? = nil
    MAX_FOR_INT32 = Int32.new("200")
    MIN_FOR_INT32 = Int32.new("20")

    @[JSON::Field(key: "int64", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter int64 : Int64? = nil

    @[JSON::Field(key: "float", type: Float32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter float : Float32? = nil
    MAX_FOR_FLOAT = Float32.new("987.6")
    MIN_FOR_FLOAT = Float32.new("54.3")

    @[JSON::Field(key: "double", type: Float64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter double : Float64? = nil
    MAX_FOR_DOUBLE = Float64.new("123.4")
    MIN_FOR_DOUBLE = Float64.new("67.8")

    @[JSON::Field(key: "string", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter string : String? = nil
    PATTERN_FOR_STRING = /[a-z]/i

    @[JSON::Field(key: "binary", type: ::File?, default: nil, required: false, nullable: false, emit_null: false)]
    getter binary : ::File? = nil

    @[JSON::Field(key: "dateTime", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter date_time : Time? = nil

    @[JSON::Field(key: "uuid", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter uuid : String? = nil

    # A string that is a 10 digit number. Can have leading zeros.
    @[JSON::Field(key: "pattern_with_digits", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pattern_with_digits : String? = nil
    PATTERN_FOR_PATTERN_WITH_DIGITS = /^\d{10}$/

    # A string starting with 'image_' (case insensitive) and one to three digits following i.e. Image_01.
    @[JSON::Field(key: "pattern_with_digits_and_delimiter", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pattern_with_digits_and_delimiter : String? = nil
    PATTERN_FOR_PATTERN_WITH_DIGITS_AND_DELIMITER = /^image_\d{1,3}$/i

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @number : Float64? = nil,
      @byte : String? = nil,
      @date : Time? = nil,
      @password : String? = nil,
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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"number\" is required and cannot be null") if @number.nil?

      unless (_number = @number).nil?
        if max_number_error = OpenApi::PrimitiveValidator.max_number_error("number", _number, MAX_FOR_NUMBER)
          invalid_properties.push(max_number_error)
        end

        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("number", _number, MIN_FOR_NUMBER)
          invalid_properties.push(min_number_error)
        end
      end
      invalid_properties.push("\"byte\" is required and cannot be null") if @byte.nil?

      invalid_properties.push("\"date\" is required and cannot be null") if @date.nil?

      invalid_properties.push("\"password\" is required and cannot be null") if @password.nil?

      unless (_password = @password).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("password", _password.to_s.size, MAX_LENGTH_FOR_PASSWORD)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("password", _password.to_s.size, MIN_LENGTH_FOR_PASSWORD)
          invalid_properties.push(min_length_error)
        end
      end
      unless (_integer = @integer).nil?
        if max_number_error = OpenApi::PrimitiveValidator.max_number_error("integer", _integer, MAX_FOR_INTEGER)
          invalid_properties.push(max_number_error)
        end

        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("integer", _integer, MIN_FOR_INTEGER)
          invalid_properties.push(min_number_error)
        end
      end
      unless (_int32 = @int32).nil?
        if max_number_error = OpenApi::PrimitiveValidator.max_number_error("int32", _int32, MAX_FOR_INT32)
          invalid_properties.push(max_number_error)
        end

        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("int32", _int32, MIN_FOR_INT32)
          invalid_properties.push(min_number_error)
        end
      end

      unless (_float = @float).nil?
        if max_number_error = OpenApi::PrimitiveValidator.max_number_error("float", _float, MAX_FOR_FLOAT)
          invalid_properties.push(max_number_error)
        end

        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("float", _float, MIN_FOR_FLOAT)
          invalid_properties.push(min_number_error)
        end
      end
      unless (_double = @double).nil?
        if max_number_error = OpenApi::PrimitiveValidator.max_number_error("double", _double, MAX_FOR_DOUBLE)
          invalid_properties.push(max_number_error)
        end

        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("double", _double, MIN_FOR_DOUBLE)
          invalid_properties.push(min_number_error)
        end
      end
      unless (_string = @string).nil?
        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("string", _string, PATTERN_FOR_STRING)
          invalid_properties.push(pattern_error)
        end
      end

      unless (_pattern_with_digits = @pattern_with_digits).nil?
        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("pattern_with_digits", _pattern_with_digits, PATTERN_FOR_PATTERN_WITH_DIGITS)
          invalid_properties.push(pattern_error)
        end
      end
      unless (_pattern_with_digits_and_delimiter = @pattern_with_digits_and_delimiter).nil?
        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("pattern_with_digits_and_delimiter", _pattern_with_digits_and_delimiter, PATTERN_FOR_PATTERN_WITH_DIGITS_AND_DELIMITER)
          invalid_properties.push(pattern_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @number.nil?
      unless (_number = @number).nil?
        return false if _number > MAX_FOR_NUMBER
        return false if _number < MIN_FOR_NUMBER
      end

      return false if @byte.nil?

      return false if @date.nil?

      return false if @password.nil?
      unless (_password = @password).nil?
        return false if _password.to_s.size > MAX_LENGTH_FOR_PASSWORD
        return false if _password.to_s.size < MIN_LENGTH_FOR_PASSWORD
      end

      unless (_integer = @integer).nil?
        return false if _integer > MAX_FOR_INTEGER
        return false if _integer < MIN_FOR_INTEGER
      end

      unless (_int32 = @int32).nil?
        return false if _int32 > MAX_FOR_INT32
        return false if _int32 < MIN_FOR_INT32
      end

      unless (_float = @float).nil?
        return false if _float > MAX_FOR_FLOAT
        return false if _float < MIN_FOR_FLOAT
      end

      unless (_double = @double).nil?
        return false if _double > MAX_FOR_DOUBLE
        return false if _double < MIN_FOR_DOUBLE
      end

      unless (_string = @string).nil?
        return false if !PATTERN_FOR_STRING.matches?(_string)
      end

      unless (_pattern_with_digits = @pattern_with_digits).nil?
        return false if !PATTERN_FOR_PATTERN_WITH_DIGITS.matches?(_pattern_with_digits)
      end

      unless (_pattern_with_digits_and_delimiter = @pattern_with_digits_and_delimiter).nil?
        return false if !PATTERN_FOR_PATTERN_WITH_DIGITS_AND_DELIMITER.matches?(_pattern_with_digits_and_delimiter)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number Object to be assigned
    def number=(new_value : Float64?)
      raise ArgumentError.new("\"number\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_number("number", new_value, MAX_FOR_NUMBER)
        OpenApi::PrimitiveValidator.validate_min_number("number", new_value, MIN_FOR_NUMBER)
      end

      @number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] byte Object to be assigned
    def byte=(new_value : String?)
      raise ArgumentError.new("\"byte\" is required and cannot be null") if new_value.nil?

      @byte = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date Object to be assigned
    def date=(new_value : Time?)
      raise ArgumentError.new("\"date\" is required and cannot be null") if new_value.nil?

      @date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] password Object to be assigned
    def password=(new_value : String?)
      raise ArgumentError.new("\"password\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("password", new_value.to_s.size, MAX_LENGTH_FOR_PASSWORD)
        OpenApi::PrimitiveValidator.validate_min_length("password", new_value.to_s.size, MIN_LENGTH_FOR_PASSWORD)
      end

      @password = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] integer Object to be assigned
    def integer=(new_value : Int32?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_number("integer", new_value, MAX_FOR_INTEGER)
        OpenApi::PrimitiveValidator.validate_min_number("integer", new_value, MIN_FOR_INTEGER)
      end

      @integer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] int32 Object to be assigned
    def int32=(new_value : Int32?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_number("int32", new_value, MAX_FOR_INT32)
        OpenApi::PrimitiveValidator.validate_min_number("int32", new_value, MIN_FOR_INT32)
      end

      @int32 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] int64 Object to be assigned
    def int64=(new_value : Int64?)
      @int64 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] float Object to be assigned
    def float=(new_value : Float32?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_number("float", new_value, MAX_FOR_FLOAT)
        OpenApi::PrimitiveValidator.validate_min_number("float", new_value, MIN_FOR_FLOAT)
      end

      @float = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] double Object to be assigned
    def double=(new_value : Float64?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_number("double", new_value, MAX_FOR_DOUBLE)
        OpenApi::PrimitiveValidator.validate_min_number("double", new_value, MIN_FOR_DOUBLE)
      end

      @double = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] string Object to be assigned
    def string=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_pattern("string", new_value, PATTERN_FOR_STRING)
      end

      @string = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] binary Object to be assigned
    def binary=(new_value : ::File?)
      @binary = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_time Object to be assigned
    def date_time=(new_value : Time?)
      @date_time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] uuid Object to be assigned
    def uuid=(new_value : String?)
      @uuid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pattern_with_digits Object to be assigned
    def pattern_with_digits=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_pattern("pattern_with_digits", new_value, PATTERN_FOR_PATTERN_WITH_DIGITS)
      end

      @pattern_with_digits = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pattern_with_digits_and_delimiter Object to be assigned
    def pattern_with_digits_and_delimiter=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_pattern("pattern_with_digits_and_delimiter", new_value, PATTERN_FOR_PATTERN_WITH_DIGITS_AND_DELIMITER)
      end

      @pattern_with_digits_and_delimiter = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@number, @byte, @date, @password, @integer, @int32, @int64, @float, @double, @string, @binary, @date_time, @uuid, @pattern_with_digits, @pattern_with_digits_and_delimiter)
  end
end
