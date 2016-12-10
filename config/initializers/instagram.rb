require "instagram"

Instagram.configure do |config|
  config.client_id = "7a9907fe3000499f8f67e54e2fa47df4"
  config.client_secret = "25a176d74547425dab2fdcdd339bf96c"
end

CALLBACK_URL = "http://instarailsapp.herokuapp.com/login/create"
# CALLBACK_URL = "http://localhost:3000/login/create"
