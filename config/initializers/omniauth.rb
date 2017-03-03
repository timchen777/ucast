OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'app id', 'app secret', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end