# coding: utf-8
class UsersController < ApplicationController
  def stop_mail
    user = User.where(nomail_token: params[:token]).last
    if user.present?
      user.nomail = true
      user.save
      render :text => "Set nomail"
      return
    end
    render :text => "Not found"
  end

  def start_mail
    user = User.where(nomail_token: params[:token]).last
    if user.present?
      user.nomail = false
      user.save
      render :text => "Set mail"
      return
    end
    render :text => "Not found"
  end
end
