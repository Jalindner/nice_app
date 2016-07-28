helpers do

  def logged_in?
    if session[:user_id] != nil
      return true
    else
      return false
    end
  end

  def current_user
    @session_user ||= User.find(session[:user_id]) if logged_in?
  end

  def redirect_unless_logged_in(path)
    redirect path
  end

  def postToFoass
    get 'http://foaas.com/off/Tom/Everyone?shoutcloud' do
      p params
    end
  end

end
