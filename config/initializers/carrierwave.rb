# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_public = false
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AKIA5V6BO5BKXCYUWEGW"],        # required
    aws_secret_access_key: ENV["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"],        # required
  }
  config.fog_directory  = ENV["nomster-bucket-000001"]              # required
end