class UserAgent < ActiveRecord::Base
  attr_accessible :uid, :viewed_sections
  def reading_time
    self.last_time - self.first_time if self.first_time
  end
end
