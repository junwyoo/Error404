Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1409525619104129', '96cfd512585126975557549bb1bc3767', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end
