#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "uri"

module PetStore
  class PetApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a new pet to the store
    #
    # @required @param pet [PetStore::Pet?] Pet object that needs to be added to the store
    # @return [nil]
    def add_pet(*, pet : PetStore::Pet? = nil)
      add_pet_with_http_info(pet: pet)
      nil
    end

    # Add a new pet to the store
    #
    # @required @param pet [PetStore::Pet?] Pet object that needs to be added to the store
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def add_pet_with_http_info(*, pet : PetStore::Pet? = nil)
      request = build_api_request_for_add_pet(pet: pet)

      data, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: PetApi#add_pet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Add a new pet to the store
    #
    # @required @param pet [PetStore::Pet?] Pet object that needs to be added to the store
    # @return nil
    def add_pet(*, pet : PetStore::Pet? = nil, &block : Crest::Response ->)
      build_api_request_for_add_pet(pet: pet).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_add_pet(*, pet : PetStore::Pet? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: PetApi.add_pet ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"pet\" is required and cannot be null") if pet.nil?
        if _pet = pet
          _pet.validate if _pet.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/pet"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json", "application/xml"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = pet.to_json

      # auth_names
      auth_names = ["http_signature_test", "petstore_auth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "PetApi.add_pet",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Deletes a pet
    #
    # @required @param pet_id [Int64?] Pet id to delete
    # @optional @param api_key [String?]
    # @return [nil]
    def delete_pet(*, pet_id : Int64? = nil, api_key : String? = nil)
      delete_pet_with_http_info(pet_id: pet_id, api_key: api_key)
      nil
    end

    # Deletes a pet
    #
    # @required @param pet_id [Int64?] Pet id to delete
    # @optional @param api_key [String?]
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_pet_with_http_info(*, pet_id : Int64? = nil, api_key : String? = nil)
      request = build_api_request_for_delete_pet(pet_id: pet_id, api_key: api_key)

      data, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: PetApi#delete_pet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Deletes a pet
    #
    # @required @param pet_id [Int64?] Pet id to delete
    # @optional @param api_key [String?]
    # @return nil
    def delete_pet(*, pet_id : Int64? = nil, api_key : String? = nil, &block : Crest::Response ->)
      build_api_request_for_delete_pet(pet_id: pet_id, api_key: api_key).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_delete_pet(*, pet_id : Int64? = nil, api_key : String? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: PetApi.delete_pet ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"pet_id\" is required and cannot be null") if pet_id.nil?
      end

      # resource path
      local_var_path = "/pet/{petId}".sub("{" + "petId" + "}", URI.encode_path(pet_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      header_params["api_key"] = api_key.to_s if !api_key.nil?

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["petstore_auth"]

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "PetApi.delete_pet",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Finds Pets by status
    # Multiple status values can be provided with comma separated strings
    # @required @param status [Array(String)?] Status values that need to be considered for filter
    # @return [Array(Pet)]
    def find_pets_by_status(*, status : Array(String)? = nil)
      data, _status_code, _headers = find_pets_by_status_with_http_info(status: status)
      data
    end

    # Finds Pets by status
    # Multiple status values can be provided with comma separated strings
    # @required @param status [Array(String)?] Status values that need to be considered for filter
    # @return [Array<(Array(Pet), Integer, Hash)>] Array(Pet) data, response status code and response headers
    def find_pets_by_status_with_http_info(*, status : Array(String)? = nil)
      request = build_api_request_for_find_pets_by_status(status: status)

      data, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: PetApi#find_pets_by_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Array(Pet).from_json(data), status_code, headers
    end

    # Finds Pets by status
    # Multiple status values can be provided with comma separated strings
    # @required @param status [Array(String)?] Status values that need to be considered for filter
    # @return nil
    def find_pets_by_status(*, status : Array(String)? = nil, &block : Crest::Response ->)
      build_api_request_for_find_pets_by_status(status: status).execute(&block)
    end

    FIND_PETS_BY_STATUS_VALID_VALUES_FOR_STATUS = StaticArray["available", "pending", "sold"]

    # @return Crest::Request
    def build_api_request_for_find_pets_by_status(*, status : Array(String)? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: PetApi.find_pets_by_status ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"status\" is required and cannot be null") if status.nil?
        if _status = status
          OpenApi::EnumValidator.validate("status", _status, FIND_PETS_BY_STATUS_VALID_VALUES_FOR_STATUS)
        end
      end

      # resource path
      local_var_path = "/pet/findByStatus"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["status"] = @api_client.build_collection_param(status, "csv") if !status.nil? && !status.empty?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/xml", "application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["http_signature_test", "petstore_auth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "PetApi.find_pets_by_status",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Finds Pets by tags
    # Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
    # @required @param tags [Array(String)?] Tags to filter by
    # @return [Array(Pet)]
    def find_pets_by_tags(*, tags : Array(String)? = nil)
      data, _status_code, _headers = find_pets_by_tags_with_http_info(tags: tags)
      data
    end

    # Finds Pets by tags
    # Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
    # @required @param tags [Array(String)?] Tags to filter by
    # @return [Array<(Array(Pet), Integer, Hash)>] Array(Pet) data, response status code and response headers
    def find_pets_by_tags_with_http_info(*, tags : Array(String)? = nil)
      request = build_api_request_for_find_pets_by_tags(tags: tags)

      data, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: PetApi#find_pets_by_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Array(Pet).from_json(data), status_code, headers
    end

    # Finds Pets by tags
    # Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
    # @required @param tags [Array(String)?] Tags to filter by
    # @return nil
    def find_pets_by_tags(*, tags : Array(String)? = nil, &block : Crest::Response ->)
      build_api_request_for_find_pets_by_tags(tags: tags).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_find_pets_by_tags(*, tags : Array(String)? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: PetApi.find_pets_by_tags ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"tags\" is required and cannot be null") if tags.nil?
      end

      # resource path
      local_var_path = "/pet/findByTags"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["tags"] = @api_client.build_collection_param(tags, "csv") if !tags.nil? && !tags.empty?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/xml", "application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["http_signature_test", "petstore_auth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "PetApi.find_pets_by_tags",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Find pet by ID
    # Returns a single pet
    # @required @param pet_id [Int64?] ID of pet to return
    # @return [Pet]
    def get_pet_by_id(*, pet_id : Int64? = nil)
      data, _status_code, _headers = get_pet_by_id_with_http_info(pet_id: pet_id)
      data
    end

    # Find pet by ID
    # Returns a single pet
    # @required @param pet_id [Int64?] ID of pet to return
    # @return [Array<(Pet, Integer, Hash)>] Pet data, response status code and response headers
    def get_pet_by_id_with_http_info(*, pet_id : Int64? = nil)
      request = build_api_request_for_get_pet_by_id(pet_id: pet_id)

      data, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: PetApi#get_pet_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return Pet.from_json(data), status_code, headers
    end

    # Find pet by ID
    # Returns a single pet
    # @required @param pet_id [Int64?] ID of pet to return
    # @return nil
    def get_pet_by_id(*, pet_id : Int64? = nil, &block : Crest::Response ->)
      build_api_request_for_get_pet_by_id(pet_id: pet_id).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get_pet_by_id(*, pet_id : Int64? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: PetApi.get_pet_by_id ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"pet_id\" is required and cannot be null") if pet_id.nil?
      end

      # resource path
      local_var_path = "/pet/{petId}".sub("{" + "petId" + "}", URI.encode_path(pet_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/xml", "application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["api_key"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "PetApi.get_pet_by_id",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Update an existing pet
    #
    # @required @param pet [PetStore::Pet?] Pet object that needs to be added to the store
    # @return [nil]
    def update_pet(*, pet : PetStore::Pet? = nil)
      update_pet_with_http_info(pet: pet)
      nil
    end

    # Update an existing pet
    #
    # @required @param pet [PetStore::Pet?] Pet object that needs to be added to the store
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_pet_with_http_info(*, pet : PetStore::Pet? = nil)
      request = build_api_request_for_update_pet(pet: pet)

      data, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: PetApi#update_pet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Update an existing pet
    #
    # @required @param pet [PetStore::Pet?] Pet object that needs to be added to the store
    # @return nil
    def update_pet(*, pet : PetStore::Pet? = nil, &block : Crest::Response ->)
      build_api_request_for_update_pet(pet: pet).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_update_pet(*, pet : PetStore::Pet? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: PetApi.update_pet ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"pet\" is required and cannot be null") if pet.nil?
        if _pet = pet
          _pet.validate if _pet.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/pet"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json", "application/xml"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = pet.to_json

      # auth_names
      auth_names = ["http_signature_test", "petstore_auth"]

      @api_client.build_api_request(
        http_method: :"PUT",
        path: local_var_path,
        operation: "PetApi.update_pet",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Updates a pet in the store with form data
    #
    # @required @param pet_id [Int64?] ID of pet that needs to be updated
    # @optional @param name [String?] Updated name of the pet
    # @optional @param status [String?] Updated status of the pet
    # @return [nil]
    def update_pet_with_form(*, pet_id : Int64? = nil, name : String? = nil, status : String? = nil)
      update_pet_with_form_with_http_info(pet_id: pet_id, name: name, status: status)
      nil
    end

    # Updates a pet in the store with form data
    #
    # @required @param pet_id [Int64?] ID of pet that needs to be updated
    # @optional @param name [String?] Updated name of the pet
    # @optional @param status [String?] Updated status of the pet
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_pet_with_form_with_http_info(*, pet_id : Int64? = nil, name : String? = nil, status : String? = nil)
      request = build_api_request_for_update_pet_with_form(pet_id: pet_id, name: name, status: status)

      data, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: PetApi#update_pet_with_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return nil, status_code, headers
    end

    # Updates a pet in the store with form data
    #
    # @required @param pet_id [Int64?] ID of pet that needs to be updated
    # @optional @param name [String?] Updated name of the pet
    # @optional @param status [String?] Updated status of the pet
    # @return nil
    def update_pet_with_form(*, pet_id : Int64? = nil, name : String? = nil, status : String? = nil, &block : Crest::Response ->)
      build_api_request_for_update_pet_with_form(pet_id: pet_id, name: name, status: status).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_update_pet_with_form(*, pet_id : Int64? = nil, name : String? = nil, status : String? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: PetApi.update_pet_with_form ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"pet_id\" is required and cannot be null") if pet_id.nil?
      end

      # resource path
      local_var_path = "/pet/{petId}".sub("{" + "petId" + "}", URI.encode_path(pet_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/x-www-form-urlencoded"])

      # form parameters
      form_params = Hash(String, (String | Array(String) | IO)).new
      form_params["name"] = name.to_s if !name.nil?
      form_params["status"] = status.to_s if !status.nil?

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["petstore_auth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "PetApi.update_pet_with_form",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # uploads an image
    #
    # @required @param pet_id [Int64?] ID of pet to update
    # @optional @param additional_metadata [String?] Additional data to pass to server
    # @optional @param file [::File?] file to upload
    # @return [ApiResponse]
    def upload_file(*, pet_id : Int64? = nil, additional_metadata : String? = nil, file : ::File? = nil)
      data, _status_code, _headers = upload_file_with_http_info(pet_id: pet_id, additional_metadata: additional_metadata, file: file)
      data
    end

    # uploads an image
    #
    # @required @param pet_id [Int64?] ID of pet to update
    # @optional @param additional_metadata [String?] Additional data to pass to server
    # @optional @param file [::File?] file to upload
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def upload_file_with_http_info(*, pet_id : Int64? = nil, additional_metadata : String? = nil, file : ::File? = nil)
      request = build_api_request_for_upload_file(pet_id: pet_id, additional_metadata: additional_metadata, file: file)

      data, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: PetApi#upload_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return ApiResponse.from_json(data), status_code, headers
    end

    # uploads an image
    #
    # @required @param pet_id [Int64?] ID of pet to update
    # @optional @param additional_metadata [String?] Additional data to pass to server
    # @optional @param file [::File?] file to upload
    # @return nil
    def upload_file(*, pet_id : Int64? = nil, additional_metadata : String? = nil, file : ::File? = nil, &block : Crest::Response ->)
      build_api_request_for_upload_file(pet_id: pet_id, additional_metadata: additional_metadata, file: file).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_upload_file(*, pet_id : Int64? = nil, additional_metadata : String? = nil, file : ::File? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: PetApi.upload_file ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"pet_id\" is required and cannot be null") if pet_id.nil?
      end

      # resource path
      local_var_path = "/pet/{petId}/uploadImage".sub("{" + "petId" + "}", URI.encode_path(pet_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["multipart/form-data"])

      # form parameters
      form_params = Hash(String, (String | Array(String) | IO)).new
      form_params["additionalMetadata"] = additional_metadata.to_s if !additional_metadata.nil?
      form_params["file"] = file if !file.nil?

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["petstore_auth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "PetApi.upload_file",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # uploads an image (required)
    #
    # @required @param pet_id [Int64?] ID of pet to update
    # @required @param required_file [::File?] file to upload
    # @optional @param additional_metadata [String?] Additional data to pass to server
    # @return [ApiResponse]
    def upload_file_with_required_file(*, pet_id : Int64? = nil, required_file : ::File? = nil, additional_metadata : String? = nil)
      data, _status_code, _headers = upload_file_with_required_file_with_http_info(pet_id: pet_id, required_file: required_file, additional_metadata: additional_metadata)
      data
    end

    # uploads an image (required)
    #
    # @required @param pet_id [Int64?] ID of pet to update
    # @required @param required_file [::File?] file to upload
    # @optional @param additional_metadata [String?] Additional data to pass to server
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def upload_file_with_required_file_with_http_info(*, pet_id : Int64? = nil, required_file : ::File? = nil, additional_metadata : String? = nil)
      request = build_api_request_for_upload_file_with_required_file(pet_id: pet_id, required_file: required_file, additional_metadata: additional_metadata)

      data, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: PetApi#upload_file_with_required_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      return ApiResponse.from_json(data), status_code, headers
    end

    # uploads an image (required)
    #
    # @required @param pet_id [Int64?] ID of pet to update
    # @required @param required_file [::File?] file to upload
    # @optional @param additional_metadata [String?] Additional data to pass to server
    # @return nil
    def upload_file_with_required_file(*, pet_id : Int64? = nil, required_file : ::File? = nil, additional_metadata : String? = nil, &block : Crest::Response ->)
      build_api_request_for_upload_file_with_required_file(pet_id: pet_id, required_file: required_file, additional_metadata: additional_metadata).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_upload_file_with_required_file(*, pet_id : Int64? = nil, required_file : ::File? = nil, additional_metadata : String? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: PetApi.upload_file_with_required_file ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"pet_id\" is required and cannot be null") if pet_id.nil?

        raise ArgumentError.new("\"required_file\" is required and cannot be null") if required_file.nil?
      end

      # resource path
      local_var_path = "/fake/{petId}/uploadImageWithRequiredFile".sub("{" + "petId" + "}", URI.encode_path(pet_id.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["multipart/form-data"])

      # form parameters
      form_params = Hash(String, (String | Array(String) | IO)).new
      form_params["additionalMetadata"] = additional_metadata.to_s if !additional_metadata.nil?
      form_params["requiredFile"] = required_file if !required_file.nil?

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = ["petstore_auth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "PetApi.upload_file_with_required_file",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
