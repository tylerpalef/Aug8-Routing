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

end
