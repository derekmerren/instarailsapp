require "instagram"

Instagram.configure do |config|
  config.client_id = "7a9907fe3000499f8f67e54e2fa47df4"
  config.client_secret = "25a176d74547425dab2fdcdd339bf96c"
end

CALLBACK_URL = Rails.application.config.instagram_callback_url
LOGIN_URL = "https://api.instagram.com/oauth/authorize/?client_id=#{Instagram.client_id}&redirect_uri=#{URI.encode(CALLBACK_URL)}&response_type=code"
