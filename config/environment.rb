# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Sejuku::Application.initialize!

# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.smtp_settings = {
# 	:address => "huv.sakura.ne.jp",
# 	:port => 587,
# 	:authentication => :plain,
# 	:user_name => "system@huv.sakura.ne.jp",
# 	:password => 'Akibakim0i'}
