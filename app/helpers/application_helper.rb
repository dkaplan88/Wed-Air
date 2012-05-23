module ApplicationHelper
  def current
    User.find_by_id(session[:login])
  end
end
