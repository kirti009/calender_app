OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '789282811701-4mn10ba1der94dfg35mdvc1o9ancogvt.apps.googleusercontent.com', '9q7ajagBsYFHF5LT7xxbBSny', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
  provider :facebook, '586815424775277', '29af3b7e6642d1b1fdc40fc3e10700e0', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end