#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "uri"
require "../api_client"

module PetStore
  class UserApi
    property api_client : ApiClient

    delegate client_side_validation, debugging, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create user
    # This can only be done by the logged in user.
    # @required @param user [PetStore::User?] Created user object
    # @return [Nil]
    def create_user(*, user : PetStore::User? = nil) : Nil
      create_user_with_http_info(user: user)
      nil
    end

    # Create user
    # This can only be done by the logged in user.
    # @required @param user [PetStore::User?] Created user object
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def create_user_with_http_info(*, user : PetStore::User? = nil) : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_create_user(user: user)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: UserApi#create_user\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    # Create user
    # This can only be done by the logged in user.
    # @required @param user [PetStore::User?] Created user object
    # @return nil
    def create_user(*, user : PetStore::User? = nil, &block : Crest::Response ->) : Nil
      build_api_request_for_create_user(user: user).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_create_user(*, user : PetStore::User? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: UserApi.create_user ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"user\" is required and cannot be null") if user.nil?
        unless (_user = user).nil?
          _user.validate if _user.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/user"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = user.to_json

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "UserApi.create_user",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Creates list of users with given input array
    #
    # @required @param user [Array(PetStore::User)?] List of user object
    # @return [Nil]
    def create_users_with_array_input(*, user : Array(PetStore::User)? = nil) : Nil
      create_users_with_array_input_with_http_info(user: user)
      nil
    end

    # Creates list of users with given input array
    #
    # @required @param user [Array(PetStore::User)?] List of user object
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def create_users_with_array_input_with_http_info(*, user : Array(PetStore::User)? = nil) : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_create_users_with_array_input(user: user)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: UserApi#create_users_with_array_input\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    # Creates list of users with given input array
    #
    # @required @param user [Array(PetStore::User)?] List of user object
    # @return nil
    def create_users_with_array_input(*, user : Array(PetStore::User)? = nil, &block : Crest::Response ->) : Nil
      build_api_request_for_create_users_with_array_input(user: user).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_create_users_with_array_input(*, user : Array(PetStore::User)? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: UserApi.create_users_with_array_input ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"user\" is required and cannot be null") if user.nil?
        unless (_user = user).nil?
          OpenApi::ContainerValidator.validate(container: _user) if _user.is_a?(Array)
        end
      end

      # resource path
      local_var_path = "/user/createWithArray"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = user.to_json

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "UserApi.create_users_with_array_input",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Creates list of users with given input array
    #
    # @required @param user [Array(PetStore::User)?] List of user object
    # @return [Nil]
    def create_users_with_list_input(*, user : Array(PetStore::User)? = nil) : Nil
      create_users_with_list_input_with_http_info(user: user)
      nil
    end

    # Creates list of users with given input array
    #
    # @required @param user [Array(PetStore::User)?] List of user object
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def create_users_with_list_input_with_http_info(*, user : Array(PetStore::User)? = nil) : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_create_users_with_list_input(user: user)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: UserApi#create_users_with_list_input\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    # Creates list of users with given input array
    #
    # @required @param user [Array(PetStore::User)?] List of user object
    # @return nil
    def create_users_with_list_input(*, user : Array(PetStore::User)? = nil, &block : Crest::Response ->) : Nil
      build_api_request_for_create_users_with_list_input(user: user).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_create_users_with_list_input(*, user : Array(PetStore::User)? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: UserApi.create_users_with_list_input ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"user\" is required and cannot be null") if user.nil?
        unless (_user = user).nil?
          OpenApi::ContainerValidator.validate(container: _user) if _user.is_a?(Array)
        end
      end

      # resource path
      local_var_path = "/user/createWithList"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = user.to_json

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "UserApi.create_users_with_list_input",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Delete user
    # This can only be done by the logged in user.
    # @required @param username [String?] The name that needs to be deleted
    # @return [Nil]
    def delete_user(*, username : String? = nil) : Nil
      delete_user_with_http_info(username: username)
      nil
    end

    # Delete user
    # This can only be done by the logged in user.
    # @required @param username [String?] The name that needs to be deleted
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def delete_user_with_http_info(*, username : String? = nil) : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_delete_user(username: username)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: UserApi#delete_user\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    # Delete user
    # This can only be done by the logged in user.
    # @required @param username [String?] The name that needs to be deleted
    # @return nil
    def delete_user(*, username : String? = nil, &block : Crest::Response ->) : Nil
      build_api_request_for_delete_user(username: username).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_delete_user(*, username : String? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: UserApi.delete_user ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"username\" is required and cannot be null") if username.nil?
      end

      # resource path
      local_var_path = "/user/{username}".sub("{" + "username" + "}", URI.encode_path(username.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "UserApi.delete_user",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Get user by user name
    #
    # @required @param username [String?] The name that needs to be fetched. Use user1 for testing.
    # @return [PetStore::User]
    def get_user_by_name(*, username : String? = nil) : PetStore::User
      data, _status_code, _headers = get_user_by_name_with_http_info(username: username)
      data
    end

    # Get user by user name
    #
    # @required @param username [String?] The name that needs to be fetched. Use user1 for testing.
    # @return [Tuple(PetStore::User, Integer, Hash)] PetStore::User, response status code and response headers
    def get_user_by_name_with_http_info(*, username : String? = nil) : Tuple(PetStore::User, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_user_by_name(username: username)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: UserApi#get_user_by_name\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(PetStore::User.from_json(body), status_code, headers)
    end

    # Get user by user name
    #
    # @required @param username [String?] The name that needs to be fetched. Use user1 for testing.
    # @return nil
    def get_user_by_name(*, username : String? = nil, &block : Crest::Response ->) : Nil
      build_api_request_for_get_user_by_name(username: username).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_get_user_by_name(*, username : String? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: UserApi.get_user_by_name ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"username\" is required and cannot be null") if username.nil?
      end

      # resource path
      local_var_path = "/user/{username}".sub("{" + "username" + "}", URI.encode_path(username.to_s))

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
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "UserApi.get_user_by_name",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Logs user into the system
    #
    # @required @param username [String?] The user name for login
    # @required @param password [String?] The password for login in clear text
    # @return [String]
    def login_user(*, username : String? = nil, password : String? = nil) : String
      data, _status_code, _headers = login_user_with_http_info(username: username, password: password)
      data
    end

    # Logs user into the system
    #
    # @required @param username [String?] The user name for login
    # @required @param password [String?] The password for login in clear text
    # @return [Tuple(String, Integer, Hash)] String, response status code and response headers
    def login_user_with_http_info(*, username : String? = nil, password : String? = nil) : Tuple(String, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_login_user(username: username, password: password)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: UserApi#login_user\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(String.from_json(body), status_code, headers)
    end

    # Logs user into the system
    #
    # @required @param username [String?] The user name for login
    # @required @param password [String?] The password for login in clear text
    # @return nil
    def login_user(*, username : String? = nil, password : String? = nil, &block : Crest::Response ->) : Nil
      build_api_request_for_login_user(username: username, password: password).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_login_user(*, username : String? = nil, password : String? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: UserApi.login_user ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"username\" is required and cannot be null") if username.nil?

        raise ArgumentError.new("\"password\" is required and cannot be null") if password.nil?
      end

      # resource path
      local_var_path = "/user/login"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new
      query_params["username"] = username.to_s if !username.nil?
      query_params["password"] = password.to_s if !password.nil?

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/xml", "application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "UserApi.login_user",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Logs out current logged in user session
    #
    # @return [Nil]
    def logout_user : Nil
      logout_user_with_http_info()
      nil
    end

    # Logs out current logged in user session
    #
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def logout_user_with_http_info : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_logout_user()

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: UserApi#logout_user\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    # Logs out current logged in user session
    #
    # @return nil
    def logout_user(&block : Crest::Response ->) : Nil
      build_api_request_for_logout_user().execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_logout_user : Crest::Request
      if debugging
        Log.debug { "Calling API: UserApi.logout_user ..." }
      end

      # resource path
      local_var_path = "/user/logout"

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new

      # form parameters
      form_params = nil

      # http body (model)
      post_body = nil

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "UserApi.logout_user",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # Updated user
    # This can only be done by the logged in user.
    # @required @param username [String?] name that need to be deleted
    # @required @param user [PetStore::User?] Updated user object
    # @return [Nil]
    def update_user(*, username : String? = nil, user : PetStore::User? = nil) : Nil
      update_user_with_http_info(username: username, user: user)
      nil
    end

    # Updated user
    # This can only be done by the logged in user.
    # @required @param username [String?] name that need to be deleted
    # @required @param user [PetStore::User?] Updated user object
    # @return [Tuple(Nil, Integer, Hash)] Nil, response status code and response headers
    def update_user_with_http_info(*, username : String? = nil, user : PetStore::User? = nil) : Tuple(Nil, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_update_user(username: username, user: user)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging
        Log.debug { "API called: UserApi#update_user\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(nil, status_code, headers)
    end

    # Updated user
    # This can only be done by the logged in user.
    # @required @param username [String?] name that need to be deleted
    # @required @param user [PetStore::User?] Updated user object
    # @return nil
    def update_user(*, username : String? = nil, user : PetStore::User? = nil, &block : Crest::Response ->) : Nil
      build_api_request_for_update_user(username: username, user: user).execute(&block)
    end

    # @return Crest::Request
    def build_api_request_for_update_user(*, username : String? = nil, user : PetStore::User? = nil) : Crest::Request
      if debugging
        Log.debug { "Calling API: UserApi.update_user ..." }
      end

      if client_side_validation
        raise ArgumentError.new("\"username\" is required and cannot be null") if username.nil?

        raise ArgumentError.new("\"user\" is required and cannot be null") if user.nil?
        unless (_user = user).nil?
          _user.validate if _user.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/user/{username}".sub("{" + "username" + "}", URI.encode_path(username.to_s))

      # query parameters
      query_params = Hash(String, (String | Array(String))).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = nil

      # http body (model)
      post_body = user.to_json

      # auth_names
      auth_names = [] of String

      @api_client.build_api_request(
        http_method: :"PUT",
        path: local_var_path,
        operation: "UserApi.update_user",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
