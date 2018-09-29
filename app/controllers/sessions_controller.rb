class SessionsController < ApplicationController

  def hello

  end

  def new

  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
    redirect_to sessions_new_path
  end
end
