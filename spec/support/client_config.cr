API_KEY = ENV.fetch("API_KEY", "ignored_by_vcr")

PetStore.configure do |config|
  config.api_key["api_key"] = API_KEY
  config.api_key["api_key_query"] = API_KEY
  config.api_key["api_key_cookie"] = API_KEY
end
