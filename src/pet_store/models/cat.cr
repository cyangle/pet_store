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
  class Cat
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # This is the name of the class
    @[JSON::Field(key: "className", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter class_name : String? = nil

    # Optional properties

    @[JSON::Field(key: "declawed", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter declawed : Bool? = nil

    # The color of the pet
    @[JSON::Field(key: "color", type: String?, default: "red", required: false, nullable: false, emit_null: false)]
    getter color : String? = "red"

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
        PetStore::Animal,
        PetStore::CatAllOf,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String? = nil,
      @class_name : String? = nil,
      # Optional properties
      @declawed : Bool? = nil,
      @color : String? = "red"
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?
      if _name = @name
        if _name.to_s.size > 255
          invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 255.")
        end
      end
      invalid_properties.push("\"class_name\" is required and cannot be null") if @class_name.nil?
      if _class_name = @class_name
        if _class_name.to_s.size > 64
          invalid_properties.push("invalid value for \"class_name\", the character length must be smaller than or equal to 64.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      if _name = @name
        return false if _name.to_s.size > 255
      end
      return false if @class_name.nil?
      if _class_name = @class_name
        return false if _class_name.to_s.size > 64
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        raise ArgumentError.new("\"name\" is required and cannot be null")
      end
      _name = name.not_nil!
      if _name.to_s.size > 255
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 255.")
      end

      @name = name
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_name Object to be assigned
    def class_name=(class_name : String?)
      if class_name.nil?
        raise ArgumentError.new("\"class_name\" is required and cannot be null")
      end
      _class_name = class_name.not_nil!
      if _class_name.to_s.size > 64
        raise ArgumentError.new("invalid value for \"class_name\", the character length must be smaller than or equal to 64.")
      end

      @class_name = class_name
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] declawed Object to be assigned
    def declawed=(declawed : Bool?)
      if declawed.nil?
        return @declawed = nil
      end
      @declawed = declawed
    end # Custom attribute writer method checking allowed values (enum).
    # @param [Object] color Object to be assigned
    def color=(color : String?)
      if color.nil?
        return @color = nil
      end
      @color = color
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
    def_equals_and_hash(@name, @class_name, @declawed, @color)
  end
end
