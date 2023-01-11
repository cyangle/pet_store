#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/order"

module PetStore
  class StoreApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete purchase order by ID
    # For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors
    # @required @param order_id [String?] ID of the order that needs to be deleted
    # @return [Nil]
    def delete_order(
      *,
      order_id : String? = nil
    ) : Nil
      delete_order_with_http_info(order_id: order_id)
      nil
    end

    # Delete purchase order by ID
    # For valid response try integer IDs with value &lt; 1000. Anything above 1000 or nonintegers will generate API errors
    # @required @param order_id [String?] ID of the order that needs to be deleted
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def delete_order_with_http_info(
      *,
      order_id : String? = nil
    ) : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_delete_order(order_id: order_id)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: StoreApi#delete_order\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    # Delete purchase order by ID
    # For valid response try integer IDs with value &lt; 1000. Anything above 1000 or nonintegers will generate API errors
    # @required @param order_id [String?] ID of the order that needs to be deleted
    # @return nil
    def delete_order(
      *,
      order_id : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_delete_order(order_id: order_id).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_delete_order(
      *,
      order_id : String? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: StoreApi.delete_order ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"order_id\" is required and cannot be null") if order_id.nil?
      end

      # resource path
      local_var_path = "/store/order/{order_id}".sub("{" + "order_id" + "}", URI.encode_path(order_id.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "StoreApi.delete_order",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Returns pet inventories by status
    # Returns a map of status codes to quantities
    # @return [Hash(String, Int32)]
    def get_inventory : Hash(String, Int32)
      data, _status_code, _headers = get_inventory_with_http_info()
      data
    end

    # Returns pet inventories by status
    # Returns a map of status codes to quantities
    # @return [Tuple(Hash(String, Int32), Integer, Hash)] Hash(String, Int32), response status code and response headers
    def get_inventory_with_http_info : Tuple(Hash(String, Int32), Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_inventory()

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: StoreApi#get_inventory\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Hash(String, Int32).from_json(body), status_code, headers)
    end

    # Returns pet inventories by status
    # Returns a map of status codes to quantities
    # @return nil
    def get_inventory(
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_inventory().execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get_inventory : Crest::Request
      if debugging
        Log.debug { "Calling API: StoreApi.get_inventory ..." }
      end

      # resource path
      local_var_path = "/store/inventory"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["api_key"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "StoreApi.get_inventory",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Find purchase order by ID
    # For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions
    # @required @param order_id [Int64?] ID of pet that needs to be fetched
    # @return [PetStore::Order]
    def get_order_by_id(
      *,
      order_id : Int64? = nil
    ) : PetStore::Order
      data, _status_code, _headers = get_order_by_id_with_http_info(order_id: order_id)
      data
    end

    # Find purchase order by ID
    # For valid response try integer IDs with value &lt;&#x3D; 5 or &gt; 10. Other values will generated exceptions
    # @required @param order_id [Int64?] ID of pet that needs to be fetched
    # @return [Tuple(PetStore::Order, Integer, Hash)] PetStore::Order, response status code and response headers
    def get_order_by_id_with_http_info(
      *,
      order_id : Int64? = nil
    ) : Tuple(PetStore::Order, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_order_by_id(order_id: order_id)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: StoreApi#get_order_by_id\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(PetStore::Order.from_json(body), status_code, headers)
    end

    # Find purchase order by ID
    # For valid response try integer IDs with value &lt;&#x3D; 5 or &gt; 10. Other values will generated exceptions
    # @required @param order_id [Int64?] ID of pet that needs to be fetched
    # @return nil
    def get_order_by_id(
      *,
      order_id : Int64? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_order_by_id(order_id: order_id).execute(&block)
    end

    GET_ORDER_BY_ID_MAX_FOR_ORDER_ID = Int64.new("5")
    GET_ORDER_BY_ID_MIN_FOR_ORDER_ID = Int64.new("1")

    # @return Crest::Request
    def build_api_request_for_get_order_by_id(
      *,
      order_id : Int64? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: StoreApi.get_order_by_id ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"order_id\" is required and cannot be null") if order_id.nil?
        unless (_order_id = order_id).nil?
          OpenApi::PrimitiveValidator.validate_max_number("order_id", _order_id, GET_ORDER_BY_ID_MAX_FOR_ORDER_ID)
          OpenApi::PrimitiveValidator.validate_min_number("order_id", _order_id, GET_ORDER_BY_ID_MIN_FOR_ORDER_ID)
        end
      end

      # resource path
      local_var_path = "/store/order/{order_id}".sub("{" + "order_id" + "}", URI.encode_path(order_id.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/xml", "application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "StoreApi.get_order_by_id",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Place an order for a pet
    #
    # @required @param order [PetStore::Order?] order placed for purchasing the pet
    # @return [PetStore::Order]
    def place_order(
      *,
      order : PetStore::Order? = nil
    ) : PetStore::Order
      data, _status_code, _headers = place_order_with_http_info(order: order)
      data
    end

    # Place an order for a pet
    #
    # @required @param order [PetStore::Order?] order placed for purchasing the pet
    # @return [Tuple(PetStore::Order, Integer, Hash)] PetStore::Order, response status code and response headers
    def place_order_with_http_info(
      *,
      order : PetStore::Order? = nil
    ) : Tuple(PetStore::Order, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_place_order(order: order)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: StoreApi#place_order\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(PetStore::Order.from_json(body), status_code, headers)
    end

    # Place an order for a pet
    #
    # @required @param order [PetStore::Order?] order placed for purchasing the pet
    # @return nil
    def place_order(
      *,
      order : PetStore::Order? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_place_order(order: order).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_place_order(
      *,
      order : PetStore::Order? = nil
    ) : Crest::Request
      if debugging
        Log.debug { "Calling API: StoreApi.place_order ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"order\" is required and cannot be null") if order.nil?
        unless (_order = order).nil?
          _order.validate if _order.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/store/order"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/xml", "application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = @api_client.encode(body: order, content_type: header_params["Content-Type"]?) if !order.nil?

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "StoreApi.place_order",
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
