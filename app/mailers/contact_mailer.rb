# coding: utf-8

class ContactMailer < ActionMailer::Base

  default from: %Q|"侍エンジニア塾.net" <system@huv.sakura.ne.jp>|
   
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.question.notification.subject
  #x
  def sent(contact)
    @contact = contact
    mail to: "samuraijuku@gmail.com", subject: "フォームからのお問い合わせ"
  end
  
  def resp(contact)
    @contact = contact
    mail to: @contact.email, subject: "お問い合わせありがとうございました。"
  end
end

