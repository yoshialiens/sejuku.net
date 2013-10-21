# coding: utf-8
class User < ActiveRecord::Base
	STEP_MAILS = {
		"0" =>
["タイトル",
"name
est1testi111111111
11111111111name1111111111111111"],
		"2" =>
["タイトル2",
"name
est1testi111111111
111111111111111111111111111"],
		"13" =>
["タイトル13",
"name
est1testi111111111
11111111111name1111111111111111"]
	}
  STEP_MAIL_SGNATURE =
"侍エンジニア塾 代表
木内翔大

公式ホームページ
http://www.sejuku.net/

マンツーマンレッスン
http://www.sejuku.net/pages/lesson

メールマガジン配信停止
stop_mail
"
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :trackable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :name, :provider, :uid, :provider_image_url
  # attr_accessible :title, :body

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    graph = Koala::Facebook::API.new(auth.credentials.token)
    profile = graph.get_object("me", {:locale => "ja"})
    unless user
      user = User.create(name:(profile["name"])? profile["name"] : auth.extra.raw_info.name,
                         first_name: profile["first_name"],
                         last_name: profile["last_name"],
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         provider_image_url:auth.info.image,
                         password:Devise.friendly_token[0,20]
                        )
    end
    user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

	def lapsed_days
		(Time.now - self.created_at).divmod(24*60*60)[0]
	end
end
