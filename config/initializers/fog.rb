CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJ6PJO4ZJQ2EEVNIQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'us-west-1',                  # optional, defaults to 'us-east-1'
#    host:                  's3.example.com',             # optional, defaults to nil
#    endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'talkboard-between'                          # required
  config.fog_public     = TRUE                                        # optional, defaults to true
#  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end
