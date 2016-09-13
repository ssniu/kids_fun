OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '342870616044708', 'd91865334540761d2c58a8885d39f7be', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
  provider :twitter, Rails.application.secrets.twitter_api_key, Rails.application.secrets.twitter_api_key
end
