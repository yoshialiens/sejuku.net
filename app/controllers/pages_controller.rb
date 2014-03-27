# coding: utf-8
class PagesController < ApplicationController
  # layout "lesson", :only => [:lesson]
  # layout "group", :only => [:group]

  layout :select_layout

  def select_layout
    if action_name == 'lesson'
      "lesson"
    elsif action_name == 'group'
      "group"
    elsif action_name == 'report'
      "report", "report1"
    else
      "application"
    end
  end

  def lesson
    @title = "マンツーマンレッスン"
    @directory = "/assets/lesson/"
  end

  def group
    @title = "グループレッスン"
    @directory = "/assets/group/"
  end

  def report
    @title = "メールマガジン"
    @directory = "/assets/report/"
  end

  def base
    @title = "プログラミング基礎講座"
    @directory = "/assets/base/"
  end

	def checks
		@users = User.where("created_at > ?", Time.mktime(2013, 10, 8, 0, 0, 0)).order("created_at asc")
		@user_agents = UserAgent.where("created_at > ?", Time.mktime(2013, 10, 21, 20, 0, 0)).order("created_at desc").limit(1000)
	end
end
