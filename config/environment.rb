# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Sejuku::Application.initialize!

# action mailer dafault url
config.action_mailer.default_url_options = { :host => 'localhost:3000' }
