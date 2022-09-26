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
  class User
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "id", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : Int64? = nil

    @[JSON::Field(key: "username", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter username : String? = nil

    @[JSON::Field(key: "firstName", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter first_name : String? = nil

    @[JSON::Field(key: "lastName", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter last_name : String? = nil

    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil

    @[JSON::Field(key: "password", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter password : String? = nil

    @[JSON::Field(key: "phone", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : String? = nil

    # User Status
    @[JSON::Field(key: "userStatus", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter user_status : Int32? = nil

    # test code generation for objects Value must be a map of strings to values. It cannot be the 'null' value.
    @[JSON::Field(key: "arbitraryObject", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter arbitrary_object : Hash(String, String)? = nil

    # test code generation for nullable objects. Value must be a map of strings to values or the 'null' value.
    @[JSON::Field(key: "arbitraryNullableObject", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: arbitrary_nullable_object.nil? && !arbitrary_nullable_object_present?)]
    getter arbitrary_nullable_object : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? arbitrary_nullable_object_present : Bool = false

    # test code generation for any type Value can be any type - string, number, boolean, array or object.
    @[JSON::Field(key: "arbitraryTypeValue", type: JSON::Any?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: arbitrary_type_value.nil? && !arbitrary_type_value_present?)]
    getter arbitrary_type_value : JSON::Any? = nil

    @[JSON::Field(ignore: true)]
    property? arbitrary_type_value_present : Bool = false

    # test code generation for any type Value can be any type - string, number, boolean, array, object or the 'null' value.
    @[JSON::Field(key: "arbitraryNullableTypeValue", type: JSON::Any?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: arbitrary_nullable_type_value.nil? && !arbitrary_nullable_type_value_present?)]
    getter arbitrary_nullable_type_value : JSON::Any? = nil

    @[JSON::Field(ignore: true)]
    property? arbitrary_nullable_type_value_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @id : Int64? = nil,
      @username : String? = nil,
      @first_name : String? = nil,
      @last_name : String? = nil,
      @email : String? = nil,
      @password : String? = nil,
      @phone : String? = nil,
      @user_status : Int32? = nil,
      @arbitrary_object : Hash(String, String)? = nil,
      @arbitrary_nullable_object : Hash(String, String)? = nil,
      @arbitrary_type_value : JSON::Any? = nil,
      @arbitrary_nullable_type_value : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : Int64?)
      if id.nil?
        return @id = nil
      end
      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] username Object to be assigned
    def username=(username : String?)
      if username.nil?
        return @username = nil
      end
      @username = username
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name Object to be assigned
    def first_name=(first_name : String?)
      if first_name.nil?
        return @first_name = nil
      end
      @first_name = first_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name Object to be assigned
    def last_name=(last_name : String?)
      if last_name.nil?
        return @last_name = nil
      end
      @last_name = last_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(email : String?)
      if email.nil?
        return @email = nil
      end
      @email = email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] password Object to be assigned
    def password=(password : String?)
      if password.nil?
        return @password = nil
      end
      @password = password
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone : String?)
      if phone.nil?
        return @phone = nil
      end
      @phone = phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_status Object to be assigned
    def user_status=(user_status : Int32?)
      if user_status.nil?
        return @user_status = nil
      end
      @user_status = user_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] arbitrary_object Object to be assigned
    def arbitrary_object=(arbitrary_object : Hash(String, String)?)
      if arbitrary_object.nil?
        return @arbitrary_object = nil
      end
      @arbitrary_object = arbitrary_object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] arbitrary_nullable_object Object to be assigned
    def arbitrary_nullable_object=(arbitrary_nullable_object : Hash(String, String)?)
      if arbitrary_nullable_object.nil?
        return @arbitrary_nullable_object = nil
      end
      @arbitrary_nullable_object = arbitrary_nullable_object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] arbitrary_type_value Object to be assigned
    def arbitrary_type_value=(arbitrary_type_value : JSON::Any?)
      if arbitrary_type_value.nil?
        return @arbitrary_type_value = nil
      end
      @arbitrary_type_value = arbitrary_type_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] arbitrary_nullable_type_value Object to be assigned
    def arbitrary_nullable_type_value=(arbitrary_nullable_type_value : JSON::Any?)
      if arbitrary_nullable_type_value.nil?
        return @arbitrary_nullable_type_value = nil
      end
      @arbitrary_nullable_type_value = arbitrary_nullable_type_value
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
    def_equals_and_hash(@id, @username, @first_name, @last_name, @email, @password, @phone, @user_status, @arbitrary_object, @arbitrary_nullable_object, @arbitrary_nullable_object_present, @arbitrary_type_value, @arbitrary_type_value_present, @arbitrary_nullable_type_value, @arbitrary_nullable_type_value_present)
  end
end
