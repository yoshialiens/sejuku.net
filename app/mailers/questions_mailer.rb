# coding: utf-8
class QuestionsMailer < ActionMailer::Base
  default from: "system@sejuku.sakura.ne.jp"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.question.notification.subject
  #
  def notification(question)
    @question = question
    mail to: "shota7180@gmail.com", subject: "Q&Aに質問がありました！"
  end
  def answer_notification(answer)
    @answer = answer
    mail to: "shota7180@gmail.com", subject: "Q&Aに回答がありました！"
  end
end
