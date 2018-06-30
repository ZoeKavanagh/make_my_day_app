OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
  '27438778495-ogdjl0vs7qdu9nsglp90tvo1ikftfoun.apps.googleusercontent.com',
  'gSsEn7o9ZwluOAZBelnO47n7',
  { client_options:
    { ssl:
      { ca_file: Rails.root.join("cacert.pem").to_s }
    }
  }
end
