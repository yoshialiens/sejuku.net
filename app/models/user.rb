class User < ActiveRecord::Base
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

end
