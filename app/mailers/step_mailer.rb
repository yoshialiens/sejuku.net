# coding: utf-8
class StepMailer < ActionMailer::Base
  default from: "system@huv.sakura.ne.jp"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.question.notification.subject
  #
  def test(user)
    @user = user
		if User::STEP_MAILS[user.lapsed_days.to_s]
			mail to: user.email, subject: "ステップメールテスト　" + User::STEP_MAILS[user.lapsed_days.to_s][0]
		end
  end
end
