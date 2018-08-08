class PagesController < ApplicationController
  def welcome
    @header = "this is the welcome page"
    @title = "Welcome"
  end

  def about
    @header = "this is the about page"
    @title = "About"
  end

  def contest
    @header = "this is the contest page"
    @title = "Contest"
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
  
end
