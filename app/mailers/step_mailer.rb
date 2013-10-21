# coding: utf-8
class StepMailer < ActionMailer::Base
  default from: %Q|"侍エンジニア塾.net" <system@huv.sakura.ne.jp>|

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.question.notification.subject
  #
  def send_step_mails(user)
    @user = user
    return if @user.nomail
    @subject = User::STEP_MAILS[user.lapsed_days.to_s][0]
    @body = User::STEP_MAILS[@user.lapsed_days.to_s][1].gsub("name",@user.last_name + "さん")
    @signature = User::STEP_MAIL_SIGNATURE.gsub("stop_mail", "http://dev.sejuku.net:3000/users/stop_mail/#{@user.nomail_token}")
    @signature = User::STEP_MAIL_SIGNATURE.gsub("stop_mail", "http://www.sejuku.net/users/stop_mail/#{@user.nomail_token}") if Rails.env.production?
		if User::STEP_MAILS[user.lapsed_days.to_s]
			mail to: user.email, subject: @subject
		end
  end
end
