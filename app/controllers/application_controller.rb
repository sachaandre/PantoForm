class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_author

  def current_author
    @current_author ||= Author.find(session[:author_id]) if session[:author_id]
  end

  def require_user
    redirect_to '/signin' unless current_author
  end
end
