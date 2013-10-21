class UserAgentsController < ApplicationController
  def viewed
    user_agent = UserAgent.where(:uid => params[:uid]).first
    if user_agent.present?
      user_agent.viewed_sections += ",#{params[:section]}"
      user_agent.save
    else
      user_agent = UserAgent.new(:uid => params[:uid], :viewed_sections => params[:section])
      user_agent.save
    end
    render :text => "ok"
  end
end
