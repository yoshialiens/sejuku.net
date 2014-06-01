class Contact < ActiveRecord::Base
  attr_accessible :name, :sex, :age, :tel, :fbid, :email, :reason, :date_and_time
  
  validates_presence_of :name, :sex, :age, :tel, :fbid, :email, :reason, :date_and_time
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_format_of :email, :with => VALID_EMAIL_REGEX, :allow_nil => true, :if => Proc.new {|contact| !contact.email.blank?}
end
