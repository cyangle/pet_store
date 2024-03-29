#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/client"

module PetStore
  class AnotherFakeApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # To test special tags
    # To test special tags and operation ID starting with number
    # @required @param client [PetStore::Client?] client model
    # @return [PetStore::Client]
    def call_123_test_special_tags(
      *,
      client : PetStore::Client? = nil
    ) : PetStore::Client
      data, _status_code, _headers = call_123_test_special_tags_with_http_info(client: client)
      data
    end

    # To test special tags
    # To test special tags and operation ID starting with number
    # @required @param client [PetStore::Client?] client model
    # @return [Tuple(PetStore::Client, Integer, Hash)] PetStore::Client, response status code and response headers
    def call_123_test_special_tags_with_http_info(
      *,
      client : PetStore::Client? = nil
    ) : Tuple(PetStore::Client, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_call_123_test_special_tags(client: client)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: AnotherFakeApi#call_123_test_special_tags\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(PetStore::Client.from_json(body), status_code, headers)
    end

    # To test special tags
    # To test special tags and operation ID starting with number
    # @required @param client [PetStore::Client?] client model
    # @return nil
    def call_123_test_special_tags(
      *,
      client : PetStore::Client? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_call_123_test_special_tags(client: client).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_call_123_test_special_tags(
      *,
      client : PetStore::Client? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: AnotherFakeApi.call_123_test_special_tags ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"client\" is required and cannot be null") if client.nil?
        unless (_client = client).nil?
          _client.validate if _client.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/another-fake/dummy"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = @api_client.encode(body: client, content_type: header_params["Content-Type"]?) if !client.nil?

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"PATCH",
        path: local_var_path,
        operation: "AnotherFakeApi.call_123_test_special_tags",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
