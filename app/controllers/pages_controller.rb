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
    @header = "this is the contest page"
    @title = "Contest"
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
