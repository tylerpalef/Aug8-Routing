class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "this is the welcome page"
    @title = "Welcome"
  end

  def about
    @header = "this is the about page"
    @title = "About"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def secrets
  if params[:magic_word] == 'tyler'
    render :secrets
  else
    flash[:alert] = "Sorry, you're not authorized to see that page!"
    redirect_to welcome_path
  end
end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
