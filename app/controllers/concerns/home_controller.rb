class HomeController < ApplicationController

  def index
    @brand = 'Twitter'
    @tweets = Tweet.all
  end

end