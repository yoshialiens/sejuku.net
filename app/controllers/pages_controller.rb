# coding: utf-8
class PagesController < ApplicationController
  layout "lesson", :only => [:lesson, :group]

  def lesson
    @title = "マンツーマンレッスン"
    @directory = "/assets/lesson/"
  end

  def group
    @title = "グループレッスン"
    @directory = "/assets/group/"
  end
end
