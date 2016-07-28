helpers do

  def logged_in?
    return true if session[:user_id] != nil
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
