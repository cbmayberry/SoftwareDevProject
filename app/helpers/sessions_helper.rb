module SessionsHelper
  # Log in the given user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Return the current logged in user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Return true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end

  # Log out current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
