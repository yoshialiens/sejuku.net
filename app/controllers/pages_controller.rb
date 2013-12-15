# coding: utf-8
class PagesController < ApplicationController
  layout "lesson", :only => [:lesson]
  layout "group", :only => [:group]

  def lesson
    @title = "マンツーマンレッスン"
    @directory = "/assets/lesson/"
  end

  def group
    @title = "グループレッスン"
    @directory = "/assets/group/"
  end

	def checks
		@users = User.where("created_at > ?", Time.mktime(2013, 10, 8, 0, 0, 0)).order("created_at asc")
		@user_agents = UserAgent.where("created_at > ?", Time.mktime(2013, 10, 21, 20, 0, 0)).order("created_at desc").limit(1000)
	end
end
