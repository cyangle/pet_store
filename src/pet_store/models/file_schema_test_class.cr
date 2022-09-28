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
  class FileSchemaTestClass
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "file", type: PetStore::File?, default: nil, required: false, nullable: false, emit_null: false)]
    getter file : PetStore::File? = nil

    @[JSON::Field(key: "files", type: Array(PetStore::File)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter files : Array(PetStore::File)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @file : PetStore::File? = nil,
      @files : Array(PetStore::File)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _file = @file
        if _file.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_file.list_invalid_properties_for("file"))
        end
      end
      if _files = @files
        if _files.is_a?(Array)
          _files.each do |item|
            if item.is_a?(OpenApi::Validatable)
              invalid_properties.concat(item.list_invalid_properties_for("files"))
            end
          end
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _file = @file
        if _file.is_a?(OpenApi::Validatable)
          return false unless _file.valid?
        end
      end
      if _files = @files
        if _files.is_a?(Array)
          _files.each do |item|
            if item.is_a?(OpenApi::Validatable)
              return false unless item.valid?
            end
          end
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] file Object to be assigned
    def file=(file : PetStore::File?)
      if file.nil?
        return @file = nil
      end
      _file = file.not_nil!
      if _file.is_a?(OpenApi::Validatable)
        _file.validate
      end
      @file = _file
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] files Object to be assigned
    def files=(files : Array(PetStore::File)?)
      if files.nil?
        return @files = nil
      end
      _files = files.not_nil!
      if _files.is_a?(Array)
        _files.each do |item|
          if item.is_a?(OpenApi::Validatable)
            item.validate
          end
        end
      end
      @files = _files
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@file, @files)
  end
end
