#  OpenAPI Petstore
#
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
#
# The version of the OpenAPI document: 1.0.0
#
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"

# Unit tests for PetStore::FakeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "FakeApi" do
  describe "test an instance of FakeApi" do
    it "should create an instance of FakeApi" do
      api_instance = PetStore::FakeApi.new
      api_instance.should be_a(PetStore::FakeApi)
    end
  end

  # unit tests for fake_health_get
  # Health check endpoint
  # @param [Hash] opts the optional parameters
  # @return [HealthCheckResult]
  describe "fake_health_get test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for fake_outer_boolean_serialize
  # Test serialization of outer boolean types
  # @param [Hash] opts the optional parameters
  # @option opts [Bool] :body Input boolean as post body
  # @return [Bool]
  describe "fake_outer_boolean_serialize test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for fake_outer_composite_serialize
  # Test serialization of object with outer number type
  # @param [Hash] opts the optional parameters
  # @option opts [OuterComposite] :outer_composite Input composite as post body
  # @return [OuterComposite]
  describe "fake_outer_composite_serialize test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for fake_outer_number_serialize
  # Test serialization of outer number types
  # @param [Hash] opts the optional parameters
  # @option opts [Float64] :body Input number as post body
  # @return [Float64]
  describe "fake_outer_number_serialize test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for fake_outer_string_serialize
  # Test serialization of outer string types
  # @param [Hash] opts the optional parameters
  # @option opts [String] :body Input string as post body
  # @return [String]
  describe "fake_outer_string_serialize test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_body_with_file_schema
  # For this test, the body for this request much reference a schema named &#x60;File&#x60;.
  # @param file_schema_test_class
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "test_body_with_file_schema test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_body_with_query_params
  # @param query
  # @param user
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "test_body_with_query_params test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_client_model
  # To test \&quot;client\&quot; model
  # To test \&quot;client\&quot; model
  # @param client client model
  # @param [Hash] opts the optional parameters
  # @return [Client]
  describe "test_client_model test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_endpoint_parameters
  # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트
  # Fake endpoint for testing various parameters 假端點 偽のエンドポイント 가짜 엔드 포인트
  # @param number None
  # @param double None
  # @param pattern_without_delimiter None
  # @param byte None
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :integer None
  # @option opts [Int32] :int32 None
  # @option opts [Int64] :int64 None
  # @option opts [Float32] :float None
  # @option opts [String] :string None
  # @option opts [::File] :binary None
  # @option opts [Time] :date None
  # @option opts [Time] :date_time None
  # @option opts [String] :password None
  # @option opts [String] :callback None
  # @return [nil]
  describe "test_endpoint_parameters test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_enum_parameters
  # To test enum parameters
  # To test enum parameters
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :enum_header_string_array Header parameter enum test (string array)
  # @option opts [String] :enum_header_string Header parameter enum test (string)
  # @option opts [Array(String)] :enum_query_string_array Query parameter enum test (string array)
  # @option opts [String] :enum_query_string Query parameter enum test (string)
  # @option opts [Int32] :enum_query_integer Query parameter enum test (double)
  # @option opts [Float64] :enum_query_double Query parameter enum test (double)
  # @option opts [Array(String)] :enum_form_string_array Form parameter enum test (string array)
  # @option opts [String] :enum_form_string Form parameter enum test (string)
  # @return [nil]
  describe "test_enum_parameters test" do
    it "validates enum_header_string_array" do
      api_instance = PetStore::FakeApi.new
      expect_raises(ArgumentError, /must be one of/) do
        api_instance.test_enum_parameters(enum_header_string_array: ["fail"])
      end
    end

    it "validates enum_header_string" do
      api_instance = PetStore::FakeApi.new
      expect_raises(ArgumentError, /must be one of/) do
        api_instance.test_enum_parameters(enum_header_string: "fail")
      end
    end

    it "validates enum_query_string_array" do
      api_instance = PetStore::FakeApi.new
      expect_raises(ArgumentError, /must be one of/) do
        api_instance.test_enum_parameters(enum_query_string_array: ["fail"])
      end
    end

    it "validates enum_query_string" do
      api_instance = PetStore::FakeApi.new
      expect_raises(ArgumentError, /must be one of/) do
        api_instance.test_enum_parameters(enum_query_string: "fail")
      end
    end

    it "validates enum_query_integer" do
      api_instance = PetStore::FakeApi.new
      expect_raises(ArgumentError, /must be one of/) do
        api_instance.test_enum_parameters(enum_query_integer: 0)
      end
    end

    it "validates enum_query_double" do
      api_instance = PetStore::FakeApi.new
      expect_raises(ArgumentError, /must be one of/) do
        api_instance.test_enum_parameters(enum_query_double: 1.0_f64)
      end
    end

    it "validates enum_form_string_array" do
      api_instance = PetStore::FakeApi.new
      expect_raises(ArgumentError, /must be one of/) do
        api_instance.test_enum_parameters(enum_form_string_array: ["fail"])
      end
    end

    it "validates enum_form_string" do
      api_instance = PetStore::FakeApi.new
      expect_raises(ArgumentError, /must be one of/) do
        api_instance.test_enum_parameters(enum_form_string: "fail")
      end
    end
  end

  # unit tests for test_group_parameters
  # Fake endpoint to test group parameters (optional)
  # Fake endpoint to test group parameters (optional)
  # @param required_string_group Required String in group parameters
  # @param required_boolean_group Required Boolean in group parameters
  # @param required_int64_group Required Integer in group parameters
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :string_group String in group parameters
  # @option opts [Bool] :boolean_group Boolean in group parameters
  # @option opts [Int64] :int64_group Integer in group parameters
  # @return [nil]
  describe "test_group_parameters test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_inline_additional_properties
  # test inline additionalProperties
  #
  # @param request_body request body
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "test_inline_additional_properties test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_json_form_data
  # test json serialization of form data
  #
  # @param param field1
  # @param param2 field2
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "test_json_form_data test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_query_parameter_collection_format
  # To test the collection format in query parameters
  # @param pipe
  # @param ioutil
  # @param http
  # @param url
  # @param context
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "test_query_parameter_collection_format test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_unique_items_header_and_query_parameter_collection_format
  # To test unique items in header and query parameters
  # @param query_unique
  # @param header_unique
  # @param [Hash] opts the optional parameters
  # @return [Set(Pet)]
  describe "test_unique_items_header_and_query_parameter_collection_format test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
