class ApplicationController < ActionController::Base
  protect_from_forgery

 after_filter :store_location

def store_location
 # 今回の場合は、 /users/sign_in , /users/sign_up, /users/password にアクセスしたとき、ajaxでのやりとりはsessionには保存しない。
    if (request.fullpath != "/users/sign_in" && \
        request.fullpath != "/users/sign_up" && \
        request.fullpath != "/users/password" && \
        !request.xhr?) # don't store ajax calls
      session[:previous_url] = request.fullpath 
    end
end

#ログイン後のリダイレクトをログイン前のページにする場合
def after_sign_in_path_for(resource)
  session[:previous_url] || root_path
end

#ログアウト後のリダイレクトをログアウト前のページにする場合
def after_sign_out_path_for(resource)
  session[:previous_url] || root_path
end

end
