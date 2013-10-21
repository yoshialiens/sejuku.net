desc "This task is called by the Heroku scheduler add-on"
task :send_step_mails => :environment do
  User.send_step_mails
end
