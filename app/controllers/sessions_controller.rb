class SessionsController < ApplicationController
  def new

  end

  def create
    @author = Author.find_by_email(params[:session][:email])
    if @author && @author.authenticate(params[:session][:password])
      session[:author_id] = @author.id
      redirect_to '/'
    else
      redirect_to '/signin'
    end
  end

  def destroy
    session[:author_id] = nil
    redirect_to '/'
  end
end
